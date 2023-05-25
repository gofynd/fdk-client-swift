

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var aggregator: String

        public var method: String

        public var currency: String

        public var email: String

        public var orderId: String

        public var customerId: String

        public var status: String

        public var contact: String

        public var vpa: String?

        public var deviceId: String?

        public var merchantOrderId: String

        public var merchantTransactionId: String

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case method

            case currency

            case email

            case orderId = "order_id"

            case customerId = "customer_id"

            case status

            case contact

            case vpa

            case deviceId = "device_id"

            case merchantOrderId = "merchant_order_id"

            case merchantTransactionId = "merchant_transaction_id"

            case amount
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.aggregator = aggregator

            self.method = method

            self.currency = currency

            self.email = email

            self.orderId = orderId

            self.customerId = customerId

            self.status = status

            self.contact = contact

            self.vpa = vpa

            self.deviceId = deviceId

            self.merchantOrderId = merchantOrderId

            self.merchantTransactionId = merchantTransactionId

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            method = try container.decode(String.self, forKey: .method)

            currency = try container.decode(String.self, forKey: .currency)

            email = try container.decode(String.self, forKey: .email)

            orderId = try container.decode(String.self, forKey: .orderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            status = try container.decode(String.self, forKey: .status)

            contact = try container.decode(String.self, forKey: .contact)

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

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encode(amount, forKey: .amount)
        }
    }
}
