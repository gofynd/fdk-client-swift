

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var currency: String

        public var aggregator: String

        public var vpa: String

        public var email: String

        public var merchantOrderId: String

        public var orderId: String

        public var customerId: String

        public var amount: Int

        public var contact: String

        public var method: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case aggregator

            case vpa

            case email

            case merchantOrderId = "merchant_order_id"

            case orderId = "order_id"

            case customerId = "customer_id"

            case amount

            case contact

            case method

            case status
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.currency = currency

            self.aggregator = aggregator

            self.vpa = vpa

            self.email = email

            self.merchantOrderId = merchantOrderId

            self.orderId = orderId

            self.customerId = customerId

            self.amount = amount

            self.contact = contact

            self.method = method

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            vpa = try container.decode(String.self, forKey: .vpa)

            email = try container.decode(String.self, forKey: .email)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            orderId = try container.decode(String.self, forKey: .orderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            amount = try container.decode(Int.self, forKey: .amount)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
