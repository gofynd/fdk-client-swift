

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CollectionItem
         Used By: Catalog
     */

    class CollectionItem: Codable {
        public var action: String

        public var priority: Int?

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case action

            case priority

            case itemId = "item_id"
        }

        public init(action: String, itemId: Int, priority: Int? = nil) {
            self.action = action

            self.priority = priority

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            action = try container.decode(String.self, forKey: .action)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CollectionItem
         Used By: Catalog
     */

    class CollectionItem: Codable {
        public var action: String

        public var priority: Int?

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case action

            case priority

            case itemId = "item_id"
        }

        public init(action: String, itemId: Int, priority: Int? = nil) {
            self.action = action

            self.priority = priority

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            action = try container.decode(String.self, forKey: .action)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
