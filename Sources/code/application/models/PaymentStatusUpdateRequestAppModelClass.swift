

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var email: String

        public var status: String

        public var contact: String

        public var currency: String

        public var merchantOrderId: String

        public var orderId: String

        public var vpa: String

        public var method: String

        public var amount: Int

        public var customerId: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case email

            case status

            case contact

            case currency

            case merchantOrderId = "merchant_order_id"

            case orderId = "order_id"

            case vpa

            case method

            case amount

            case customerId = "customer_id"

            case aggregator
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.email = email

            self.status = status

            self.contact = contact

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.orderId = orderId

            self.vpa = vpa

            self.method = method

            self.amount = amount

            self.customerId = customerId

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            status = try container.decode(String.self, forKey: .status)

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            orderId = try container.decode(String.self, forKey: .orderId)

            vpa = try container.decode(String.self, forKey: .vpa)

            method = try container.decode(String.self, forKey: .method)

            amount = try container.decode(Int.self, forKey: .amount)

            customerId = try container.decode(String.self, forKey: .customerId)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
