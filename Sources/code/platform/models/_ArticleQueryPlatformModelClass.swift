

import Foundation
public extension PlatformClient {
    /*
         Model: _ArticleQuery
         Used By: CompanyProfile
     */

    class _ArticleQuery: Codable {
        public var ignoredStores: [Int]?

        public var itemId: Int?

        public var size: String?

        public enum CodingKeys: String, CodingKey {
            case ignoredStores = "ignored_stores"

            case itemId = "item_id"

            case size
        }

        public init(ignoredStores: [Int]? = nil, itemId: Int? = nil, size: String? = nil) {
            self.ignoredStores = ignoredStores

            self.itemId = itemId

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ignoredStores = try container.decode([Int].self, forKey: .ignoredStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ignoredStores, forKey: .ignoredStores)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
