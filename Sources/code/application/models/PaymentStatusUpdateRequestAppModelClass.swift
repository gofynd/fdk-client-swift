

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var customerId: String

        public var email: String

        public var vpa: String

        public var aggregator: String

        public var currency: String

        public var orderId: String

        public var status: String

        public var method: String

        public var merchantOrderId: String

        public var contact: String

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case customerId = "customer_id"

            case email

            case vpa

            case aggregator

            case currency

            case orderId = "order_id"

            case status

            case method

            case merchantOrderId = "merchant_order_id"

            case contact

            case amount
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.customerId = customerId

            self.email = email

            self.vpa = vpa

            self.aggregator = aggregator

            self.currency = currency

            self.orderId = orderId

            self.status = status

            self.method = method

            self.merchantOrderId = merchantOrderId

            self.contact = contact

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerId = try container.decode(String.self, forKey: .customerId)

            email = try container.decode(String.self, forKey: .email)

            vpa = try container.decode(String.self, forKey: .vpa)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currency = try container.decode(String.self, forKey: .currency)

            orderId = try container.decode(String.self, forKey: .orderId)

            status = try container.decode(String.self, forKey: .status)

            method = try container.decode(String.self, forKey: .method)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            contact = try container.decode(String.self, forKey: .contact)

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(amount, forKey: .amount)
        }
    }
}
