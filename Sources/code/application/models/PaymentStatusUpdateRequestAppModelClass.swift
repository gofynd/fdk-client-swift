

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var contact: String

        public var aggregator: String

        public var amount: Int

        public var method: String

        public var currency: String

        public var customerId: String

        public var vpa: String

        public var email: String

        public var orderId: String

        public var merchantOrderId: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case contact

            case aggregator

            case amount

            case method

            case currency

            case customerId = "customer_id"

            case vpa

            case email

            case orderId = "order_id"

            case merchantOrderId = "merchant_order_id"

            case status
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.contact = contact

            self.aggregator = aggregator

            self.amount = amount

            self.method = method

            self.currency = currency

            self.customerId = customerId

            self.vpa = vpa

            self.email = email

            self.orderId = orderId

            self.merchantOrderId = merchantOrderId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contact = try container.decode(String.self, forKey: .contact)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)

            method = try container.decode(String.self, forKey: .method)

            currency = try container.decode(String.self, forKey: .currency)

            customerId = try container.decode(String.self, forKey: .customerId)

            vpa = try container.decode(String.self, forKey: .vpa)

            email = try container.decode(String.self, forKey: .email)

            orderId = try container.decode(String.self, forKey: .orderId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
