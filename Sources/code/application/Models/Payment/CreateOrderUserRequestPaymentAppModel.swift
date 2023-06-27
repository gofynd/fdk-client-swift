

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: CreateOrderUserRequest
         Used By: Payment
     */
    class CreateOrderUserRequest: Codable {
        public var paymentMethods: CreateOrderUserPaymentMethods

        public var meta: [String: Any]?

        public var currency: String

        public var failureCallbackUrl: String

        public var successCallbackUrl: String

        public var paymentLinkId: String

        public enum CodingKeys: String, CodingKey {
            case paymentMethods = "payment_methods"

            case meta

            case currency

            case failureCallbackUrl = "failure_callback_url"

            case successCallbackUrl = "success_callback_url"

            case paymentLinkId = "payment_link_id"
        }

        public init(currency: String, failureCallbackUrl: String, meta: [String: Any]? = nil, paymentLinkId: String, paymentMethods: CreateOrderUserPaymentMethods, successCallbackUrl: String) {
            self.paymentMethods = paymentMethods

            self.meta = meta

            self.currency = currency

            self.failureCallbackUrl = failureCallbackUrl

            self.successCallbackUrl = successCallbackUrl

            self.paymentLinkId = paymentLinkId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMethods = try container.decode(CreateOrderUserPaymentMethods.self, forKey: .paymentMethods)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            failureCallbackUrl = try container.decode(String.self, forKey: .failureCallbackUrl)

            successCallbackUrl = try container.decode(String.self, forKey: .successCallbackUrl)

            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(failureCallbackUrl, forKey: .failureCallbackUrl)

            try? container.encodeIfPresent(successCallbackUrl, forKey: .successCallbackUrl)

            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)
        }
    }
}
