import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: PaymentStatusUpdateRequest
         Used By: Payment
     */
    class PaymentStatusUpdateRequest: Codable {
        public var customerId: String

        public var status: String

        public var contact: String

        public var amount: Int

        public var currency: String

        public var orderId: String

        public var merchantOrderId: String

        public var method: String

        public var vpa: String

        public var aggregator: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case customerId = "customer_id"

            case status

            case contact

            case amount

            case currency

            case orderId = "order_id"

            case merchantOrderId = "merchant_order_id"

            case method

            case vpa

            case aggregator

            case email
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, email: String, merchantOrderId: String, method: String, orderId: String, status: String, vpa: String) {
            self.customerId = customerId

            self.status = status

            self.contact = contact

            self.amount = amount

            self.currency = currency

            self.orderId = orderId

            self.merchantOrderId = merchantOrderId

            self.method = method

            self.vpa = vpa

            self.aggregator = aggregator

            self.email = email
        }

        public func duplicate() -> PaymentStatusUpdateRequest {
            let dict = self.dictionary!
            let copy = PaymentStatusUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            customerId = try container.decode(String.self, forKey: .customerId)

            status = try container.decode(String.self, forKey: .status)

            contact = try container.decode(String.self, forKey: .contact)

            amount = try container.decode(Int.self, forKey: .amount)

            currency = try container.decode(String.self, forKey: .currency)

            orderId = try container.decode(String.self, forKey: .orderId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            method = try container.decode(String.self, forKey: .method)

            vpa = try container.decode(String.self, forKey: .vpa)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(contact, forKey: .contact)

            try? container.encode(amount, forKey: .amount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(method, forKey: .method)

            try? container.encodeIfPresent(vpa, forKey: .vpa)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
