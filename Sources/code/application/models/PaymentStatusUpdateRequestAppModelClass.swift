

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var status: String

        public var orderId: String

        public var vpa: String

        public var merchantOrderId: String

        public var aggregator: String

        public var customerId: String

        public var method: String

        public var amount: Int

        public var email: String

        public var contact: String

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case status

            case orderId = "order_id"

            case vpa

            case merchantOrderId = "merchant_order_id"

            case aggregator

            case customerId = "customer_id"

            case method

            case amount

            case email

            case contact

            case currency
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.status = status

            self.orderId = orderId

            self.vpa = vpa

            self.merchantOrderId = merchantOrderId

            self.aggregator = aggregator

            self.customerId = customerId

            self.method = method

            self.amount = amount

            self.email = email

            self.contact = contact

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            orderId = try container.decode(String.self, forKey: .orderId)

            vpa = try container.decode(String.self, forKey: .vpa)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)

            amount = try container.decode(Int.self, forKey: .amount)

            email = try container.decode(String.self, forKey: .email)

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
