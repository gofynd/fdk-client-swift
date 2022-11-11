

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var contact: String

        public var amount: Int

        public var aggregator: String

        public var merchantOrderId: String

        public var orderId: String

        public var vpa: String

        public var currency: String

        public var email: String

        public var status: String

        public var customerId: String

        public var method: String

        public enum CodingKeys: String, CodingKey {
            case contact

            case amount

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case orderId = "order_id"

            case vpa

            case currency

            case email

            case status

            case customerId = "customer_id"

            case method
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.contact = contact

            self.amount = amount

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.orderId = orderId

            self.vpa = vpa

            self.currency = currency

            self.email = email

            self.status = status

            self.customerId = customerId

            self.method = method
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contact = try container.decode(String.self, forKey: .contact)

            amount = try container.decode(Int.self, forKey: .amount)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            orderId = try container.decode(String.self, forKey: .orderId)

            vpa = try container.decode(String.self, forKey: .vpa)

            currency = try container.decode(String.self, forKey: .currency)

            email = try container.decode(String.self, forKey: .email)

            status = try container.decode(String.self, forKey: .status)

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }
}
