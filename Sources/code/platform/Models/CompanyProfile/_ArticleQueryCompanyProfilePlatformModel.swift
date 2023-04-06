

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: _ArticleQuery
         Used By: CompanyProfile
     */

    class _ArticleQuery: Codable {
        public var itemId: Int?

        public var size: String?

        public var ignoredStores: [Int]?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case size

            case ignoredStores = "ignored_stores"
        }

        public init(ignoredStores: [Int]? = nil, itemId: Int? = nil, size: String? = nil) {
            self.itemId = itemId

            self.size = size

            self.ignoredStores = ignoredStores
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                ignoredStores = try container.decode([Int].self, forKey: .ignoredStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(ignoredStores, forKey: .ignoredStores)
        }
    }
}
