

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var customerId: String

        public var currency: String

        public var vpa: String

        public var amount: Int

        public var aggregator: String

        public var orderId: String

        public var contact: String

        public var method: String

        public var email: String

        public var merchantOrderId: String

        public var status: String

        public enum CodingKeys: String, CodingKey {
            case customerId = "customer_id"

            case currency

            case vpa

            case amount

            case aggregator

            case orderId = "order_id"

            case contact

            case method

            case email

            case merchantOrderId = "merchant_order_id"

            case status
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.customerId = customerId

            self.currency = currency

            self.vpa = vpa

            self.amount = amount

            self.aggregator = aggregator

            self.orderId = orderId

            self.contact = contact

            self.method = method

            self.email = email

            self.merchantOrderId = merchantOrderId

            self.status = status
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerId = try container.decode(String.self, forKey: .customerId)

            currency = try container.decode(String.self, forKey: .currency)

            vpa = try container.decode(String.self, forKey: .vpa)

            amount = try container.decode(Int.self, forKey: .amount)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderId = try container.decode(String.self, forKey: .orderId)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            email = try container.decode(String.self, forKey: .email)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            status = try container.decode(String.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }
}
