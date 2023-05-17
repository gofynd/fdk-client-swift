

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: ArticlePriceInfo
         Used By: PosCart
     */
    class ArticlePriceInfo: Codable {
        public var base: BasePriceSchema?

        public var converted: BasePriceSchema?

        public enum CodingKeys: String, CodingKey {
            case base

            case converted
        }

        public init(base: BasePriceSchema? = nil, converted: BasePriceSchema? = nil) {
            self.base = base

            self.converted = converted
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                base = try container.decode(BasePriceSchema.self, forKey: .base)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                converted = try container.decode(BasePriceSchema.self, forKey: .converted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(base, forKey: .base)

            try? container.encodeIfPresent(converted, forKey: .converted)
        }
    }
}
