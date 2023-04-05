

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var method: String

        public var status: String

        public var merchantOrderId: String

        public var orderId: String

        public var contact: String

        public var amount: Int

        public var customerId: String

        public var currency: String

        public var vpa: String

        public var email: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case method

            case status

            case merchantOrderId = "merchant_order_id"

            case orderId = "order_id"

            case contact

            case amount

            case customerId = "customer_id"

            case currency

            case vpa

            case email

            case aggregator
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.method = method

            self.status = status

            self.merchantOrderId = merchantOrderId

            self.orderId = orderId

            self.contact = contact

            self.amount = amount

            self.customerId = customerId

            self.currency = currency

            self.vpa = vpa

            self.email = email

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            method = try container.decode(String.self, forKey: .method)

            status = try container.decode(String.self, forKey: .status)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            orderId = try container.decode(String.self, forKey: .orderId)

            contact = try container.decode(String.self, forKey: .contact)

            amount = try container.decode(Int.self, forKey: .amount)

            customerId = try container.decode(String.self, forKey: .customerId)

            currency = try container.decode(String.self, forKey: .currency)

            vpa = try container.decode(String.self, forKey: .vpa)

            email = try container.decode(String.self, forKey: .email)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
