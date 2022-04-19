import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: LineItemsArticleIdentifier
         Used By: Order
     */

    class LineItemsArticleIdentifier: Codable {
        public var skuCode: String?

        public enum CodingKeys: String, CodingKey {
            case skuCode = "sku_code"
        }

        public init(skuCode: String? = nil) {
            self.skuCode = skuCode
        }

        public func duplicate() -> LineItemsArticleIdentifier {
            let dict = self.dictionary!
            let copy = LineItemsArticleIdentifier(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                skuCode = try container.decode(String.self, forKey: .skuCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(skuCode, forKey: .skuCode)
        }
    }
}
