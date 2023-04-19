

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var status: String

        public var aggregator: String

        public var customerId: String

        public var email: String

        public var orderId: String

        public var currency: String

        public var contact: String

        public var method: String

        public var amount: Int

        public var merchantOrderId: String

        public var vpa: String

        public enum CodingKeys: String, CodingKey {
            case status

            case aggregator

            case customerId = "customer_id"

            case email

            case orderId = "order_id"

            case currency

            case contact

            case method

            case amount

            case merchantOrderId = "merchant_order_id"

            case vpa
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.status = status

            self.aggregator = aggregator

            self.customerId = customerId

            self.email = email

            self.orderId = orderId

            self.currency = currency

            self.contact = contact

            self.method = method

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            status = try container.decode(String.self, forKey: .status)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            customerId = try container.decode(String.self, forKey: .customerId)

            email = try container.decode(String.self, forKey: .email)

            orderId = try container.decode(String.self, forKey: .orderId)

            currency = try container.decode(String.self, forKey: .currency)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            amount = try container.decode(Int.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            vpa = try container.decode(String.self, forKey: .vpa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)
        }
    }
}
