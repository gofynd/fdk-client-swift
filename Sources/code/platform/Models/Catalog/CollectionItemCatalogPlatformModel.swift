

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CollectionItem
         Used By: Catalog
     */

    class CollectionItem: Codable {
        public var itemId: Int

        public var priority: Int?

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case priority

            case action
        }

        public init(action: String, itemId: Int, priority: Int? = nil) {
            self.itemId = itemId

            self.priority = priority

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CollectionItem
         Used By: Catalog
     */

    class CollectionItem: Codable {
        public var itemId: Int

        public var priority: Int?

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case priority

            case action
        }

        public init(action: String, itemId: Int, priority: Int? = nil) {
            self.itemId = itemId

            self.priority = priority

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
