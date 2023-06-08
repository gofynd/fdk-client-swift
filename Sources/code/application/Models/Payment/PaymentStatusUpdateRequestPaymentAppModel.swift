

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var customerId: String

        public var aggregator: String

        public var merchantTransactionId: String

        public var merchantOrderId: String

        public var method: String

        public var contact: String

        public var vpa: String

        public var status: String

        public var orderId: String

        public var email: String

        public var currency: String

        public var amount: Int

        public enum CodingKeys: String, CodingKey {
            case customerId = "customer_id"

            case aggregator

            case merchantTransactionId = "merchant_transaction_id"

            case merchantOrderId = "merchant_order_id"

            case method

            case contact

            case vpa

            case status

            case orderId = "order_id"

            case email

            case currency

            case amount
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String) {
            self.customerId = customerId

            self.aggregator = aggregator

            self.merchantTransactionId = merchantTransactionId

            self.merchantOrderId = merchantOrderId

            self.method = method

            self.contact = contact

            self.vpa = vpa

            self.status = status

            self.orderId = orderId

            self.email = email

            self.currency = currency

            self.amount = amount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerId = try container.decode(String.self, forKey: .customerId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            method = try container.decode(String.self, forKey: .method)

            contact = try container.decode(String.self, forKey: .contact)

            vpa = try container.decode(String.self, forKey: .vpa)

            status = try container.decode(String.self, forKey: .status)

            orderId = try container.decode(String.self, forKey: .orderId)

            email = try container.decode(String.self, forKey: .email)

            currency = try container.decode(String.self, forKey: .currency)

            amount = try container.decode(Int.self, forKey: .amount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(amount, forKey: .amount)
        }
    }
}
