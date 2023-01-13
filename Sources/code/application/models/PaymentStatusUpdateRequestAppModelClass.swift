

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var aggregator: String

        public var vpa: String

        public var customerId: String

        public var orderId: String

        public var status: String

        public var method: String

        public var amount: Int

        public var contact: String

        public var currency: String

        public var merchantOrderId: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case vpa

            case customerId = "customer_id"

            case orderId = "order_id"

            case status

            case method

            case amount

            case contact

            case currency

            case merchantOrderId = "merchant_order_id"

            case email
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.aggregator = aggregator

            self.vpa = vpa

            self.customerId = customerId

            self.orderId = orderId

            self.status = status

            self.method = method

            self.amount = amount

            self.contact = contact

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            vpa = try container.decode(String.self, forKey: .vpa)

            customerId = try container.decode(String.self, forKey: .customerId)

            orderId = try container.decode(String.self, forKey: .orderId)

            status = try container.decode(String.self, forKey: .status)

            method = try container.decode(String.self, forKey: .method)

            amount = try container.decode(Int.self, forKey: .amount)

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
