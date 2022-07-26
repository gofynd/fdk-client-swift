

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var aggregator: String

        public var customerId: String

        public var vpa: String

        public var amount: Int

        public var status: String

        public var method: String

        public var orderId: String

        public var email: String

        public var currency: String

        public var merchantOrderId: String

        public var contact: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case customerId = "customer_id"

            case vpa

            case amount

            case status

            case method

            case orderId = "order_id"

            case email

            case currency

            case merchantOrderId = "merchant_order_id"

            case contact
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.aggregator = aggregator

            self.customerId = customerId

            self.vpa = vpa

            self.amount = amount

            self.status = status

            self.method = method

            self.orderId = orderId

            self.email = email

            self.currency = currency

            self.merchantOrderId = merchantOrderId

            self.contact = contact
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            customerId = try container.decode(String.self, forKey: .customerId)

            vpa = try container.decode(String.self, forKey: .vpa)

            amount = try container.decode(Int.self, forKey: .amount)

            status = try container.decode(String.self, forKey: .status)

            method = try container.decode(String.self, forKey: .method)

            orderId = try container.decode(String.self, forKey: .orderId)

            email = try container.decode(String.self, forKey: .email)

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            contact = try container.decode(String.self, forKey: .contact)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }
}
