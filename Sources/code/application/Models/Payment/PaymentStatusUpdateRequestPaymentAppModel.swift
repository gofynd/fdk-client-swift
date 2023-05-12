

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var status: String

        public var orderId: String

        public var vpa: String

        public var aggregator: String

        public var merchantOrderId: String

        public var email: String

        public var method: String

        public var customerId: String

        public var contact: String

        public var currency: String

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case status

            case orderId = "order_id"

            case vpa

            case aggregator

            case merchantOrderId = "merchant_order_id"

            case email

            case method

            case customerId = "customer_id"

            case contact

            case currency

            case amount
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.status = status

            self.orderId = orderId

            self.vpa = vpa

            self.aggregator = aggregator

            self.merchantOrderId = merchantOrderId

            self.email = email

            self.method = method

            self.customerId = customerId

            self.contact = contact

            self.currency = currency

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            orderId = try container.decode(String.self, forKey: .orderId)

            vpa = try container.decode(String.self, forKey: .vpa)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            email = try container.decode(String.self, forKey: .email)

            method = try container.decode(String.self, forKey: .method)

            customerId = try container.decode(String.self, forKey: .customerId)

            contact = try container.decode(String.self, forKey: .contact)

            currency = try container.decode(String.self, forKey: .currency)

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(amount, forKey: .amount)
        }
    }
}
