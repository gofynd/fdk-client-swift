

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var email: String

        public var contact: String

        public var method: String

        public var vpa: String

        public var customerId: String

        public var amount: Int

        public var status: String

        public var orderId: String

        public var merchantOrderId: String

        public var currency: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case email

            case contact

            case method

            case vpa

            case customerId = "customer_id"

            case amount

            case status

            case orderId = "order_id"

            case merchantOrderId = "merchant_order_id"

            case currency

            case aggregator
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.email = email

            self.contact = contact

            self.method = method

            self.vpa = vpa

            self.customerId = customerId

            self.amount = amount

            self.status = status

            self.orderId = orderId

            self.merchantOrderId = merchantOrderId

            self.currency = currency

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            vpa = try container.decode(String.self, forKey: .vpa)

            customerId = try container.decode(String.self, forKey: .customerId)

            amount = try container.decode(Int.self, forKey: .amount)

            status = try container.decode(String.self, forKey: .status)

            orderId = try container.decode(String.self, forKey: .orderId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            currency = try container.decode(String.self, forKey: .currency)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
