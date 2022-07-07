

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var amount: Int

        public var currency: String

        public var vpa: String

        public var status: String

        public var merchantOrderId: String

        public var aggregator: String

        public var orderId: String

        public var email: String

        public var customerId: String

        public var method: String

        public var contact: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case currency

            case vpa

            case status

            case merchantOrderId = "merchant_order_id"

            case aggregator

            case orderId = "order_id"

            case email

            case customerId = "customer_id"

            case method

            case contact
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.amount = amount

            self.currency = currency

            self.vpa = vpa

            self.status = status

            self.merchantOrderId = merchantOrderId

            self.aggregator = aggregator

            self.orderId = orderId

            self.email = email

            self.customerId = customerId

            self.method = method

            self.contact = contact
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Int.self, forKey: .amount)

            currency = try container.decode(String.self, forKey: .currency)

            vpa = try container.decode(String.self, forKey: .vpa)

            status = try container.decode(String.self, forKey: .status)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderId = try container.decode(String.self, forKey: .orderId)

            email = try container.decode(String.self, forKey: .email)

            customerId = try container.decode(String.self, forKey: .customerId)

            method = try container.decode(String.self, forKey: .method)

            contact = try container.decode(String.self, forKey: .contact)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }
}
