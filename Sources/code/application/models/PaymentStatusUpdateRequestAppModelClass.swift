

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var currency: String

        public var status: String

        public var contact: String

        public var amount: Int

        public var orderId: String

        public var merchantOrderId: String

        public var email: String

        public var customerId: String

        public var vpa: String

        public var aggregator: String

        public var method: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case status

            case contact

            case amount

            case orderId = "order_id"

            case merchantOrderId = "merchant_order_id"

            case email

            case customerId = "customer_id"

            case vpa

            case aggregator

            case method
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.currency = currency

            self.status = status

            self.contact = contact

            self.amount = amount

            self.orderId = orderId

            self.merchantOrderId = merchantOrderId

            self.email = email

            self.customerId = customerId

            self.vpa = vpa

            self.aggregator = aggregator

            self.method = method
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            status = try container.decode(String.self, forKey: .status)

            contact = try container.decode(String.self, forKey: .contact)

            amount = try container.decode(Int.self, forKey: .amount)

            orderId = try container.decode(String.self, forKey: .orderId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            email = try container.decode(String.self, forKey: .email)

            customerId = try container.decode(String.self, forKey: .customerId)

            vpa = try container.decode(String.self, forKey: .vpa)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            method = try container.decode(String.self, forKey: .method)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }
}
