

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var status: String

        public var aggregator: String

        public var orderId: String

        public var customerId: String

        public var method: String

        public var currency: String

        public var amount: Int

        public var email: String

        public var vpa: String

        public var contact: String

        public var merchantOrderId: String

        public enum CodingKeys: String, CodingKey {
            case status

            case aggregator

            case orderId = "order_id"

            case customerId = "customer_id"

            case method

            case currency

            case amount

            case email

            case vpa

            case contact

            case merchantOrderId = "merchant_order_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.status = status

            self.aggregator = aggregator

            self.orderId = orderId

            self.customerId = customerId

            self.method = method

            self.currency = currency

            self.amount = amount

            self.email = email

            self.vpa = vpa

            self.contact = contact

            self.merchantOrderId = merchantOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderId = try container.decode(String.self, forKey: .orderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)

            currency = try container.decode(String.self, forKey: .currency)

            amount = try container.decode(Int.self, forKey: .amount)

            email = try container.decode(String.self, forKey: .email)

            vpa = try container.decode(String.self, forKey: .vpa)

            contact = try container.decode(String.self, forKey: .contact)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
        }
    }
}
