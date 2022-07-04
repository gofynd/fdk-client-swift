

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateOrderUserRequest
         Used By: Payment
     */
    class CreateOrderUserRequest: Codable {
        public var paymentLinkId: String

        public var meta: [String: Any]?

        public var failureCallbackUrl: String

        public var currency: String

        public var successCallbackUrl: String

        public var paymentMethods: CreateOrderUserPaymentMethods

        public enum CodingKeys: String, CodingKey {
            case paymentLinkId = "payment_link_id"

            case meta

            case failureCallbackUrl = "failure_callback_url"

            case currency

            case successCallbackUrl = "success_callback_url"

            case paymentMethods = "payment_methods"
        }

        public init(currency: String, failureCallbackUrl: String, meta: [String: Any]? = nil, paymentLinkId: String, paymentMethods: CreateOrderUserPaymentMethods, successCallbackUrl: String) {
            self.paymentLinkId = paymentLinkId

            self.meta = meta

            self.failureCallbackUrl = failureCallbackUrl

            self.currency = currency

            self.successCallbackUrl = successCallbackUrl

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            failureCallbackUrl = try container.decode(String.self, forKey: .failureCallbackUrl)

            currency = try container.decode(String.self, forKey: .currency)

            successCallbackUrl = try container.decode(String.self, forKey: .successCallbackUrl)

            paymentMethods = try container.decode(CreateOrderUserPaymentMethods.self, forKey: .paymentMethods)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(failureCallbackUrl, forKey: .failureCallbackUrl)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(successCallbackUrl, forKey: .successCallbackUrl)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}