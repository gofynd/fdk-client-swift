

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var currency: String

        public var email: String

        public var amount: Int

        public var vpa: String

        public var merchantOrderId: String

        public var orderId: String

        public var status: String

        public var method: String

        public var customerId: String

        public var aggregator: String

        public var contact: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case email

            case amount

            case vpa

            case merchantOrderId = "merchant_order_id"

            case orderId = "order_id"

            case status

            case method

            case customerId = "customer_id"

            case aggregator

            case contact
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.currency = currency

            self.email = email

            self.amount = amount

            self.vpa = vpa

            self.merchantOrderId = merchantOrderId

            self.orderId = orderId

            self.status = status

            self.method = method

            self.customerId = customerId

            self.aggregator = aggregator

            self.contact = contact
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Int.self, forKey: .amount)

            vpa = try container.decode(String.self, forKey: .vpa)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            orderId = try container.decode(String.self, forKey: .orderId)

            status = try container.decode(String.self, forKey: .status)

            method = try container.decode(String.self, forKey: .method)

            customerId = try container.decode(String.self, forKey: .customerId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            contact = try container.decode(String.self, forKey: .contact)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(contact, forKey: .contact)
        }
    }
}
