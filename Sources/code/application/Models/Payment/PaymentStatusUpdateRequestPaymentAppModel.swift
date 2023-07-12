

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var currency: String

        public var orderId: String

        public var merchantTransactionId: String

        public var deviceId: String?

        public var aggregator: String

        public var amount: Int

        public var status: String

        public var merchantOrderId: String

        public var customerId: String

        public var email: String

        public var method: String

        public var contact: String

        public var vpa: String?

        public enum CodingKeys: String, CodingKey {
            case currency

            case orderId = "order_id"

            case merchantTransactionId = "merchant_transaction_id"

            case deviceId = "device_id"

            case aggregator

            case amount

            case status

            case merchantOrderId = "merchant_order_id"

            case customerId = "customer_id"

            case email

            case method

            case contact

            case vpa
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            self.currency = currency

            self.orderId = orderId

            self.merchantTransactionId = merchantTransactionId

            self.deviceId = deviceId

            self.aggregator = aggregator

            self.amount = amount

            self.status = status

            self.merchantOrderId = merchantOrderId

            self.customerId = customerId

            self.email = email

            self.method = method

            self.contact = contact

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            orderId = try container.decode(String.self, forKey: .orderId)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)

            status = try container.decode(String.self, forKey: .status)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            email = try container.decode(String.self, forKey: .email)

            method = try container.decode(String.self, forKey: .method)

            contact = try container.decode(String.self, forKey: .contact)

            do {
                vpa = try container.decode(String.self, forKey: .vpa)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encode(deviceId, forKey: .deviceId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(vpa, forKey: .vpa)
        }
    }
}
