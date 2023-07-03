

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var orderId: String

        public var merchantOrderId: String

        public var merchantTransactionId: String

        public var contact: String

        public var status: String

        public var email: String

        public var amount: Int

        public var customerId: String

        public var currency: String

        public var aggregator: String

        public var method: String

        public var vpa: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case merchantOrderId = "merchant_order_id"

            case merchantTransactionId = "merchant_transaction_id"

            case contact

            case status

            case email

            case amount

            case customerId = "customer_id"

            case currency

            case aggregator

            case method

            case vpa
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String) {
            self.orderId = orderId

            self.merchantOrderId = merchantOrderId

            self.merchantTransactionId = merchantTransactionId

            self.contact = contact

            self.status = status

            self.email = email

            self.amount = amount

            self.customerId = customerId

            self.currency = currency

            self.aggregator = aggregator

            self.method = method

            self.vpa = vpa
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)

            contact = try container.decode(String.self, forKey: .contact)

            status = try container.decode(String.self, forKey: .status)

            email = try container.decode(String.self, forKey: .email)

            amount = try container.decode(Int.self, forKey: .amount)

            customerId = try container.decode(String.self, forKey: .customerId)

            currency = try container.decode(String.self, forKey: .currency)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            method = try container.decode(String.self, forKey: .method)

            vpa = try container.decode(String.self, forKey: .vpa)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(vpa, forKey: .vpa)
        }
    }
}
