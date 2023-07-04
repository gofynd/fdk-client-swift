

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreateOrderUserData
         Used By: Payment
     */
    class CreateOrderUserData: Codable {
        public var merchantOrderId: String?

        public var currency: String?

        public var email: String?

        public var contact: String?

        public var customerId: String?

        public var amount: Double?

        public var orderId: String?

        public var method: String?

        public var aggregator: String?

        public var callbackUrl: String?

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case currency

            case email

            case contact

            case customerId = "customer_id"

            case amount

            case orderId = "order_id"

            case method

            case aggregator

            case callbackUrl = "callback_url"
        }

        public init(aggregator: String? = nil, amount: Double? = nil, callbackUrl: String? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, email: String? = nil, merchantOrderId: String? = nil, method: String? = nil, orderId: String? = nil) {
            self.merchantOrderId = merchantOrderId

            self.currency = currency

            self.email = email

            self.contact = contact

            self.customerId = customerId

            self.amount = amount

            self.orderId = orderId

            self.method = method

            self.aggregator = aggregator

            self.callbackUrl = callbackUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contact = try container.decode(String.self, forKey: .contact)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerId = try container.decode(String.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                method = try container.decode(String.self, forKey: .method)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregator = try container.decode(String.self, forKey: .aggregator)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(merchantOrderId, forKey: .merchantOrderId)

            try? container.encode(currency, forKey: .currency)

            try? container.encode(email, forKey: .email)

            try? container.encode(contact, forKey: .contact)

            try? container.encode(customerId, forKey: .customerId)

            try? container.encode(amount, forKey: .amount)

            try? container.encode(orderId, forKey: .orderId)

            try? container.encode(method, forKey: .method)

            try? container.encode(aggregator, forKey: .aggregator)

            try? container.encode(callbackUrl, forKey: .callbackUrl)
        }
    }
}
