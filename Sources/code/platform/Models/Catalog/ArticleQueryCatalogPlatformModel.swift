

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ArticleQuery
         Used By: Catalog
     */

    class ArticleQuery: Codable {
        public var size: String

        public var ignoredStores: [Int]?

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case ignoredStores = "ignored_stores"

            case itemId = "item_id"
        }

        public init(ignoredStores: [Int]? = nil, itemId: Int, size: String) {
            self.size = size

            self.ignoredStores = ignoredStores

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            do {
                ignoredStores = try container.decode([Int].self, forKey: .ignoredStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(ignoredStores, forKey: .ignoredStores)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ArticleQuery
         Used By: Catalog
     */

    class ArticleQuery: Codable {
        public var size: String

        public var ignoredStores: [Int]?

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case ignoredStores = "ignored_stores"

            case itemId = "item_id"
        }

        public init(ignoredStores: [Int]? = nil, itemId: Int, size: String) {
            self.size = size

            self.ignoredStores = ignoredStores

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            do {
                ignoredStores = try container.decode([Int].self, forKey: .ignoredStores)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(ignoredStores, forKey: .ignoredStores)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
