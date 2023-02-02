

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var merchantOrderId: String

        public var contact: String

        public var aggregator: String

        public var currency: String

        public var status: String

        public var amount: Int

        public var method: String

        public var vpa: String

        public var email: String

        public var orderId: String

        public var customerId: String

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case contact

            case aggregator

            case currency

            case status

            case amount

            case method

            case vpa

            case email

            case orderId = "order_id"

            case customerId = "customer_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.merchantOrderId = merchantOrderId

            self.contact = contact

            self.aggregator = aggregator

            self.currency = currency

            self.status = status

            self.amount = amount

            self.method = method

            self.vpa = vpa

            self.email = email

            self.orderId = orderId

            self.customerId = customerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            contact = try container.decode(String.self, forKey: .contact)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currency = try container.decode(String.self, forKey: .currency)

            status = try container.decode(String.self, forKey: .status)

            amount = try container.decode(Int.self, forKey: .amount)

            method = try container.decode(String.self, forKey: .method)

            vpa = try container.decode(String.self, forKey: .vpa)

            email = try container.decode(String.self, forKey: .email)

            orderId = try container.decode(String.self, forKey: .orderId)

            customerId = try container.decode(String.self, forKey: .customerId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)
        }
    }
}
