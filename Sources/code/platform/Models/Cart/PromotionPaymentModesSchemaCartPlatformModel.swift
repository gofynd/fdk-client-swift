

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: PromotionPaymentModesSchema
         Used By: Cart
     */

    class PromotionPaymentModesSchema: Codable {
        public var type: String

        public var codes: [String]?

        public var uses: PaymentAllowValueSchema1?

        public enum CodingKeys: String, CodingKey {
            case type

            case codes

            case uses
        }

        public init(codes: [String]? = nil, type: String, uses: PaymentAllowValueSchema1? = nil) {
            self.type = type

            self.codes = codes

            self.uses = uses
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            do {
                codes = try container.decode([String].self, forKey: .codes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uses = try container.decode(PaymentAllowValueSchema1.self, forKey: .uses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(codes, forKey: .codes)

            try? container.encodeIfPresent(uses, forKey: .uses)
        }
    }
}
