

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var aggregator: String

        public var orderId: String

        public var amount: Int

        public var merchantOrderId: String

        public var status: String

        public var contact: String

        public var method: String

        public var customerId: String

        public var email: String

        public var currency: String

        public var merchantTransactionId: String

        public var vpa: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case orderId = "order_id"

            case amount

            case merchantOrderId = "merchant_order_id"

            case status

            case contact

            case method

            case customerId = "customer_id"

            case email

            case currency

            case merchantTransactionId = "merchant_transaction_id"

            case vpa
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String) {
            self.aggregator = aggregator

            self.orderId = orderId

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.status = status

            self.contact = contact

            self.method = method

            self.customerId = customerId

            self.email = email

            self.currency = currency

            self.merchantTransactionId = merchantTransactionId

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            orderId = try container.decode(String.self, forKey: .orderId)

            amount = try container.decode(Int.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            status = try container.decode(String.self, forKey: .status)

            contact = try container.decode(String.self, forKey: .contact)

            method = try container.decode(String.self, forKey: .method)

            customerId = try container.decode(String.self, forKey: .customerId)

            email = try container.decode(String.self, forKey: .email)

            currency = try container.decode(String.self, forKey: .currency)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            vpa = try container.decode(String.self, forKey: .vpa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(vpa, forKey: .vpa)
        }
    }
}
