

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreateOrderUserRequest
         Used By: Payment
     */
    class CreateOrderUserRequest: Codable {
        public var successCallbackUrl: String

        public var failureCallbackUrl: String

        public var meta: [String: Any]?

        public var currency: String

        public var paymentLinkId: String

        public var paymentMethods: CreateOrderUserPaymentMethods

        public enum CodingKeys: String, CodingKey {
            case successCallbackUrl = "success_callback_url"

            case failureCallbackUrl = "failure_callback_url"

            case meta

            case currency

            case paymentLinkId = "payment_link_id"

            case paymentMethods = "payment_methods"
        }

        public init(currency: String, failureCallbackUrl: String, meta: [String: Any]? = nil, paymentLinkId: String, paymentMethods: CreateOrderUserPaymentMethods, successCallbackUrl: String) {
            self.successCallbackUrl = successCallbackUrl

            self.failureCallbackUrl = failureCallbackUrl

            self.meta = meta

            self.currency = currency

            self.paymentLinkId = paymentLinkId

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            successCallbackUrl = try container.decode(String.self, forKey: .successCallbackUrl)

            failureCallbackUrl = try container.decode(String.self, forKey: .failureCallbackUrl)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

            paymentMethods = try container.decode(CreateOrderUserPaymentMethods.self, forKey: .paymentMethods)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(successCallbackUrl, forKey: .successCallbackUrl)

            try? container.encodeIfPresent(failureCallbackUrl, forKey: .failureCallbackUrl)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}