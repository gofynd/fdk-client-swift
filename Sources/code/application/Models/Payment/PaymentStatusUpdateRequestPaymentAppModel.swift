

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var customerId: String

        public var vpa: String

        public var merchantOrderId: String

        public var amount: Int

        public var orderId: String

        public var contact: String

        public var aggregator: String

        public var status: String

        public var email: String

        public var method: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case customerId = "customer_id"

            case vpa

            case merchantOrderId = "merchant_order_id"

            case amount

            case orderId = "order_id"

            case contact

            case aggregator

            case status

            case email

            case method

            case currency
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.customerId = customerId

            self.vpa = vpa

            self.merchantOrderId = merchantOrderId

            self.amount = amount

            self.orderId = orderId

            self.contact = contact

            self.aggregator = aggregator

            self.status = status

            self.email = email

            self.method = method

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerId = try container.decode(String.self, forKey: .customerId)

            vpa = try container.decode(String.self, forKey: .vpa)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            amount = try container.decode(Int.self, forKey: .amount)

            orderId = try container.decode(String.self, forKey: .orderId)

            contact = try container.decode(String.self, forKey: .contact)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            status = try container.decode(String.self, forKey: .status)

            email = try container.decode(String.self, forKey: .email)

            method = try container.decode(String.self, forKey: .method)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
