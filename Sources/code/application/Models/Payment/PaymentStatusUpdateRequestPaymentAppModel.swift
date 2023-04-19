

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var vpa: String

        public var customerId: String

        public var method: String

        public var email: String

        public var amount: Int

        public var status: String

        public var contact: String

        public var merchantOrderId: String

        public var aggregator: String

        public var orderId: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case vpa

            case customerId = "customer_id"

            case method

            case email

            case amount

            case status

            case contact

            case merchantOrderId = "merchant_order_id"

            case aggregator

            case orderId = "order_id"

            case currency
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.vpa = vpa

            self.customerId = customerId

            self.method = method

            self.email = email

            self.amount = amount

            self.status = status

            self.contact = contact

            self.merchantOrderId = merchantOrderId

            self.aggregator = aggregator

            self.orderId = orderId

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            vpa = try container.decode(String.self, forKey: .vpa)

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Int.self, forKey: .amount)

            status = try container.decode(String.self, forKey: .status)

            contact = try container.decode(String.self, forKey: .contact)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderId = try container.decode(String.self, forKey: .orderId)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
