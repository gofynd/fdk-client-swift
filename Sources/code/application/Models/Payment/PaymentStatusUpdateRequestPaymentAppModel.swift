

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var amount: Int

        public var contact: String

        public var method: String

        public var orderId: String

        public var aggregator: String

        public var vpa: String

        public var customerId: String

        public var email: String

        public var status: String

        public var currency: String

        public var merchantOrderId: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case contact

            case method

            case orderId = "order_id"

            case aggregator

            case vpa

            case customerId = "customer_id"

            case email

            case status

            case currency

            case merchantOrderId = "merchant_order_id"
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.amount = amount

            self.contact = contact

            self.method = method

            self.orderId = orderId

            self.aggregator = aggregator

            self.vpa = vpa

            self.customerId = customerId

            self.email = email

            self.status = status

            self.currency = currency

            self.merchantOrderId = merchantOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Int.self, forKey: .amount)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            orderId = try container.decode(String.self, forKey: .orderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            vpa = try container.decode(String.self, forKey: .vpa)

            customerId = try container.decode(String.self, forKey: .customerId)

            email = try container.decode(String.self, forKey: .email)

            status = try container.decode(String.self, forKey: .status)

            currency = try container.decode(String.self, forKey: .currency)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
        }
    }
}
