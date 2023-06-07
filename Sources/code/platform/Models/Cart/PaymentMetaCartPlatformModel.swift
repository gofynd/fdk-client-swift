

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PaymentMeta
         Used By: Cart
     */

    class PaymentMeta: Codable {
        public var type: String?

        public var merchantCode: String?

        public var paymentIdentifier: String?

        public var paymentGateway: String?

        public enum CodingKeys: String, CodingKey {
            case type

            case merchantCode = "merchant_code"

            case paymentIdentifier = "payment_identifier"

            case paymentGateway = "payment_gateway"
        }

        public init(merchantCode: String? = nil, paymentGateway: String? = nil, paymentIdentifier: String? = nil, type: String? = nil) {
            self.type = type

            self.merchantCode = merchantCode

            self.paymentIdentifier = paymentIdentifier

            self.paymentGateway = paymentGateway
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)
        }
    }
}
