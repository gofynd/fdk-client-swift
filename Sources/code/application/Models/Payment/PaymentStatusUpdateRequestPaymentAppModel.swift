

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var currency: String

        public var amount: Int

        public var merchantOrderId: String

        public var vpa: String?

        public var orderId: String

        public var contact: String

        public var method: String

        public var deviceId: String?

        public var merchantTransactionId: String

        public var status: String

        public var email: String

        public var customerId: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case amount

            case merchantOrderId = "merchant_order_id"

            case vpa

            case orderId = "order_id"

            case contact

            case method

            case deviceId = "device_id"

            case merchantTransactionId = "merchant_transaction_id"

            case status

            case email

            case customerId = "customer_id"

            case aggregator
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.currency = currency

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.vpa = vpa

            self.orderId = orderId

            self.contact = contact

            self.method = method

            self.deviceId = deviceId

            self.merchantTransactionId = merchantTransactionId

            self.status = status

            self.email = email

            self.customerId = customerId

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            amount = try container.decode(Int.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            status = try container.decode(String.self, forKey: .status)

            email = try container.decode(String.self, forKey: .email)

            customerId = try container.decode(String.self, forKey: .customerId)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
