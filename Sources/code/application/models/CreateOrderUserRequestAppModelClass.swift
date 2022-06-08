

import Foundation
public extension ApplicationClient {
    /*
         Model: CreateOrderUserRequest
         Used By: Payment
     */
    class CreateOrderUserRequest: Codable {
        public var paymentLinkId: String

        public var paymentMethods: CreateOrderUserPaymentMethods

        public var currency: String

        public var meta: String?

        public var returnUrl: String

        public enum CodingKeys: String, CodingKey {
            case paymentLinkId = "payment_link_id"

            case paymentMethods = "payment_methods"

            case currency

            case meta

            case returnUrl = "return_url"
        }

        public init(currency: String, meta: String? = nil, paymentLinkId: String, paymentMethods: CreateOrderUserPaymentMethods, returnUrl: String) {
            self.paymentLinkId = paymentLinkId

            self.paymentMethods = paymentMethods

            self.currency = currency

            self.meta = meta

            self.returnUrl = returnUrl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)

            paymentMethods = try container.decode(CreateOrderUserPaymentMethods.self, forKey: .paymentMethods)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                meta = try container.decode(String.self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            returnUrl = try container.decode(String.self, forKey: .returnUrl)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(returnUrl, forKey: .returnUrl)
        }
    }
}
