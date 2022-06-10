

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateOrderUserRequest
         Used By: Payment
     */
    class CreateOrderUserRequest: Codable {
        public var currency: String

        public var returnUrl: String

        public var paymentMethods: CreateOrderUserPaymentMethods

        public var paymentLinkId: String

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case currency

            case returnUrl = "return_url"

            case paymentMethods = "payment_methods"

            case paymentLinkId = "payment_link_id"

            case meta
        }

        public init(currency: String, meta: [String: Any]? = nil, paymentLinkId: String, paymentMethods: CreateOrderUserPaymentMethods, returnUrl: String) {
            self.currency = currency

            self.returnUrl = returnUrl

            self.paymentMethods = paymentMethods

            self.paymentLinkId = paymentLinkId

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            returnUrl = try container.decode(String.self, forKey: .returnUrl)

            paymentMethods = try container.decode(CreateOrderUserPaymentMethods.self, forKey: .paymentMethods)

            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(returnUrl, forKey: .returnUrl)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)

            try? container.encode(meta, forKey: .meta)
        }
    }
}
