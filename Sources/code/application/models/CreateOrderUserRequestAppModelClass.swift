

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateOrderUserRequest
         Used By: Payment
     */
    class CreateOrderUserRequest: Codable {
        public var meta: String?

        public var paymentLinkId: String

        public var returnUrl: String

        public var currency: String

        public var paymentMethods: CreateOrderUserPaymentMethods

        public enum CodingKeys: String, CodingKey {
            case meta

            case paymentLinkId = "payment_link_id"

            case returnUrl = "return_url"

            case currency

            case paymentMethods = "payment_methods"
        }

        public init(currency: String, meta: String? = nil, paymentLinkId: String, paymentMethods: CreateOrderUserPaymentMethods, returnUrl: String) {
            self.meta = meta

            self.paymentLinkId = paymentLinkId

            self.returnUrl = returnUrl

            self.currency = currency

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(String.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

            returnUrl = try container.decode(String.self, forKey: .returnUrl)

            currency = try container.decode(String.self, forKey: .currency)

            paymentMethods = try container.decode(CreateOrderUserPaymentMethods.self, forKey: .paymentMethods)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)

            try? container.encodeIfPresent(returnUrl, forKey: .returnUrl)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}
