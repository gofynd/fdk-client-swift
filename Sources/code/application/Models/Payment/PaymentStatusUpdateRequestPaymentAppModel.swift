

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var status: String

        public var amount: Int

        public var vpa: String?

        public var deviceId: String?

        public var customerId: String

        public var method: String

        public var currency: String

        public var merchantOrderId: String

        public var merchantTransactionId: String

        public var aggregator: String

        public var contact: String

        public var email: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case status

            case amount

            case vpa

            case deviceId = "device_id"

            case customerId = "customer_id"

            case method

            case currency

            case merchantOrderId = "merchant_order_id"

            case merchantTransactionId = "merchant_transaction_id"

            case aggregator

            case contact

            case email

            case orderId = "order_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.status = status

            self.amount = amount

            self.vpa = vpa

            self.deviceId = deviceId

            self.customerId = customerId

            self.method = method

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.merchantTransactionId = merchantTransactionId

            self.aggregator = aggregator

            self.contact = contact

            self.email = email

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            amount = try container.decode(Int.self, forKey: .amount)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            contact = try container.decode(String.self, forKey: .contact)

            email = try container.decode(String.self, forKey: .email)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
