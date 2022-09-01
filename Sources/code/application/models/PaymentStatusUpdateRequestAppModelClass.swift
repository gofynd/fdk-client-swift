

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var currency: String

        public var orderId: String

        public var customerId: String

        public var method: String

        public var vpa: String

        public var aggregator: String

        public var status: String

        public var amount: Int

        public var merchantOrderId: String

        public var email: String

        public var contact: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case orderId = "order_id"

            case customerId = "customer_id"

            case method

            case vpa

            case aggregator

            case status

            case amount

            case merchantOrderId = "merchant_order_id"

            case email

            case contact
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.currency = currency

            self.orderId = orderId

            self.customerId = customerId

            self.method = method

            self.vpa = vpa

            self.aggregator = aggregator

            self.status = status

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.email = email

            self.contact = contact
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            orderId = try container.decode(String.self, forKey: .orderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)

            vpa = try container.decode(String.self, forKey: .vpa)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            status = try container.decode(String.self, forKey: .status)

            amount = try container.decode(Int.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            email = try container.decode(String.self, forKey: .email)

            contact = try container.decode(String.self, forKey: .contact)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }
}
