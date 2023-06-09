

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreateOrderUserRequest
         Used By: Payment
     */
    class CreateOrderUserRequest: Codable {
        public var currency: String

        public var meta: [String: Any]?

        public var successCallbackUrl: String

        public var failureCallbackUrl: String

        public var paymentMethods: CreateOrderUserPaymentMethods

        public var paymentLinkId: String

        public enum CodingKeys: String, CodingKey {
            case currency

            case meta

            case successCallbackUrl = "success_callback_url"

            case failureCallbackUrl = "failure_callback_url"

            case paymentMethods = "payment_methods"

            case paymentLinkId = "payment_link_id"
        }

        public init(currency: String, failureCallbackUrl: String, meta: [String: Any]? = nil, paymentLinkId: String, paymentMethods: CreateOrderUserPaymentMethods, successCallbackUrl: String) {
            self.currency = currency

            self.meta = meta

            self.successCallbackUrl = successCallbackUrl

            self.failureCallbackUrl = failureCallbackUrl

            self.paymentMethods = paymentMethods

            self.paymentLinkId = paymentLinkId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            successCallbackUrl = try container.decode(String.self, forKey: .successCallbackUrl)

            failureCallbackUrl = try container.decode(String.self, forKey: .failureCallbackUrl)

            paymentMethods = try container.decode(CreateOrderUserPaymentMethods.self, forKey: .paymentMethods)

            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(successCallbackUrl, forKey: .successCallbackUrl)

            try? container.encodeIfPresent(failureCallbackUrl, forKey: .failureCallbackUrl)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)
        }
    }
}
