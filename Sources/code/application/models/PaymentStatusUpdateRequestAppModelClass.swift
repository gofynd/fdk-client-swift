

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var customerId: String

        public var orderId: String

        public var aggregator: String

        public var amount: Int

        public var email: String

        public var vpa: String

        public var contact: String

        public var status: String

        public var currency: String

        public var merchantOrderId: String

        public var method: String

        public enum CodingKeys: String, CodingKey {
            case customerId = "customer_id"

            case orderId = "order_id"

            case aggregator

            case amount

            case email

            case vpa

            case contact

            case status

            case currency

            case merchantOrderId = "merchant_order_id"

            case method
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.customerId = customerId

            self.orderId = orderId

            self.aggregator = aggregator

            self.amount = amount

            self.email = email

            self.vpa = vpa

            self.contact = contact

            self.status = status

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.method = method
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerId = try container.decode(String.self, forKey: .customerId)

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)

            email = try container.decode(String.self, forKey: .email)

            vpa = try container.decode(String.self, forKey: .vpa)

            contact = try container.decode(String.self, forKey: .contact)

            status = try container.decode(String.self, forKey: .status)

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            method = try container.decode(String.self, forKey: .method)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(method, forKey: .method)
        }
    }
}
