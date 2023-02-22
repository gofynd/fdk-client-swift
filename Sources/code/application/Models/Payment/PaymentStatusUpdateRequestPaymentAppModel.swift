

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var aggregator: String

        public var amount: Int

        public var currency: String

        public var customerId: String

        public var contact: String

        public var merchantOrderId: String

        public var status: String

        public var method: String

        public var vpa: String

        public var orderId: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case amount

            case currency

            case customerId = "customer_id"

            case contact

            case merchantOrderId = "merchant_order_id"

            case status

            case method

            case vpa

            case orderId = "order_id"

            case email
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.aggregator = aggregator

            self.amount = amount

            self.currency = currency

            self.customerId = customerId

            self.contact = contact

            self.merchantOrderId = merchantOrderId

            self.status = status

            self.method = method

            self.vpa = vpa

            self.orderId = orderId

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Int.self, forKey: .amount)

            currency = try container.decode(String.self, forKey: .currency)

            customerId = try container.decode(String.self, forKey: .customerId)

            contact = try container.decode(String.self, forKey: .contact)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            status = try container.decode(String.self, forKey: .status)

            method = try container.decode(String.self, forKey: .method)

            vpa = try container.decode(String.self, forKey: .vpa)

            orderId = try container.decode(String.self, forKey: .orderId)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
