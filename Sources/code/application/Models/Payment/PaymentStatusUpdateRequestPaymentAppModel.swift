

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var contact: String

        public var merchantOrderId: String

        public var currency: String

        public var vpa: String

        public var email: String

        public var orderId: String

        public var amount: Int

        public var customerId: String

        public var status: String

        public var aggregator: String

        public var method: String

        public enum CodingKeys: String, CodingKey {
            case contact

            case merchantOrderId = "merchant_order_id"

            case currency

            case vpa

            case email

            case orderId = "order_id"

            case amount

            case customerId = "customer_id"

            case status

            case aggregator

            case method
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.contact = contact

            self.merchantOrderId = merchantOrderId

            self.currency = currency

            self.vpa = vpa

            self.email = email

            self.orderId = orderId

            self.amount = amount

            self.customerId = customerId

            self.status = status

            self.aggregator = aggregator

            self.method = method
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contact = try container.decode(String.self, forKey: .contact)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            currency = try container.decode(String.self, forKey: .currency)

            vpa = try container.decode(String.self, forKey: .vpa)

            email = try container.decode(String.self, forKey: .email)

            orderId = try container.decode(String.self, forKey: .orderId)

            amount = try container.decode(Int.self, forKey: .amount)

            customerId = try container.decode(String.self, forKey: .customerId)

            status = try container.decode(String.self, forKey: .status)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            method = try container.decode(String.self, forKey: .method)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }
}