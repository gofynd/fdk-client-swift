

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var method: String

        public var currency: String

        public var email: String

        public var status: String

        public var amount: Int

        public var aggregator: String

        public var vpa: String

        public var merchantOrderId: String

        public var customerId: String

        public var orderId: String

        public var contact: String

        public enum CodingKeys: String, CodingKey {
            case method

            case currency

            case email

            case status

            case amount

            case aggregator

            case vpa

            case merchantOrderId = "merchant_order_id"

            case customerId = "customer_id"

            case orderId = "order_id"

            case contact
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.method = method

            self.currency = currency

            self.email = email

            self.status = status

            self.amount = amount

            self.aggregator = aggregator

            self.vpa = vpa

            self.merchantOrderId = merchantOrderId

            self.customerId = customerId

            self.orderId = orderId

            self.contact = contact
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            method = try container.decode(String.self, forKey: .method)

            currency = try container.decode(String.self, forKey: .currency)

            email = try container.decode(String.self, forKey: .email)

            status = try container.decode(String.self, forKey: .status)

            amount = try container.decode(Int.self, forKey: .amount)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            vpa = try container.decode(String.self, forKey: .vpa)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            customerId = try container.decode(String.self, forKey: .customerId)

            orderId = try container.decode(String.self, forKey: .orderId)

            contact = try container.decode(String.self, forKey: .contact)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }
}
