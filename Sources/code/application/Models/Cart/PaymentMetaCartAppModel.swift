

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: PaymentMeta
         Used By: Cart
     */
    class PaymentMeta: Codable {
        public var paymentIdentifier: String?

        public var paymentGateway: String?

        public var merchantCode: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case paymentIdentifier = "payment_identifier"

            case paymentGateway = "payment_gateway"

            case merchantCode = "merchant_code"

            case type
        }

        public init(merchantCode: String? = nil, paymentGateway: String? = nil, paymentIdentifier: String? = nil, type: String? = nil) {
            self.paymentIdentifier = paymentIdentifier

            self.paymentGateway = paymentGateway

            self.merchantCode = merchantCode

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                merchantCode = try container.decode(String.self, forKey: .merchantCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(merchantCode, forKey: .merchantCode)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
