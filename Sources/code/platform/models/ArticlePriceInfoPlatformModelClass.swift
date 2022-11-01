

import Foundation
public extension PlatformClient {
    /*
         Model: ArticlePriceInfo
         Used By: Cart
     */

    class ArticlePriceInfo: Codable {
        public var converted: BasePrice?

        public var base: BasePrice?

        public enum CodingKeys: String, CodingKey {
            case converted

            case base
        }

        public init(base: BasePrice? = nil, converted: BasePrice? = nil) {
            self.converted = converted

            self.base = base
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                converted = try container.decode(BasePrice.self, forKey: .converted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                base = try container.decode(BasePrice.self, forKey: .base)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(converted, forKey: .converted)

            try? container.encodeIfPresent(base, forKey: .base)
        }
    }
}
