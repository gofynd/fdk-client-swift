

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var contact: String

        public var aggregator: String

        public var customerId: String

        public var status: String

        public var amount: Int

        public var orderId: String

        public var email: String

        public var merchantOrderId: String

        public var currency: String

        public var method: String

        public var vpa: String

        public enum CodingKeys: String, CodingKey {
            case contact

            case aggregator

            case customerId = "customer_id"

            case status

            case amount

            case orderId = "order_id"

            case email

            case merchantOrderId = "merchant_order_id"

            case currency

            case method

            case vpa
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.contact = contact

            self.aggregator = aggregator

            self.customerId = customerId

            self.status = status

            self.amount = amount

            self.orderId = orderId

            self.email = email

            self.merchantOrderId = merchantOrderId

            self.currency = currency

            self.method = method

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contact = try container.decode(String.self, forKey: .contact)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            customerId = try container.decode(String.self, forKey: .customerId)

            status = try container.decode(String.self, forKey: .status)

            amount = try container.decode(Int.self, forKey: .amount)

            orderId = try container.decode(String.self, forKey: .orderId)

            email = try container.decode(String.self, forKey: .email)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            currency = try container.decode(String.self, forKey: .currency)

            method = try container.decode(String.self, forKey: .method)

            vpa = try container.decode(String.self, forKey: .vpa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(vpa, forKey: .vpa)
        }
    }
}
