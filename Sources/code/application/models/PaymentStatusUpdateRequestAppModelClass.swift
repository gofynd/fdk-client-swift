

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var customerId: String

        public var vpa: String

        public var amount: Int

        public var method: String

        public var contact: String

        public var currency: String

        public var orderId: String

        public var email: String

        public var merchantOrderId: String

        public var status: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case customerId = "customer_id"

            case vpa

            case amount

            case method

            case contact

            case currency

            case orderId = "order_id"

            case email

            case merchantOrderId = "merchant_order_id"

            case status

            case aggregator
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.customerId = customerId

            self.vpa = vpa

            self.amount = amount

            self.method = method

            self.contact = contact

            self.currency = currency

            self.orderId = orderId

            self.email = email

            self.merchantOrderId = merchantOrderId

            self.status = status

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerId = try container.decode(String.self, forKey: .customerId)

            vpa = try container.decode(String.self, forKey: .vpa)

            amount = try container.decode(Int.self, forKey: .amount)

            method = try container.decode(String.self, forKey: .method)

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)

            orderId = try container.decode(String.self, forKey: .orderId)

            email = try container.decode(String.self, forKey: .email)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            status = try container.decode(String.self, forKey: .status)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
