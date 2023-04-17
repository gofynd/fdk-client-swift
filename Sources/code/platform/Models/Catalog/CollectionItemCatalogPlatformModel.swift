

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CollectionItem
         Used By: Catalog
     */

    class CollectionItem: Codable {
        public var priority: Int?

        public var action: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case priority

            case action

            case itemId = "item_id"
        }

        public init(action: String, itemId: Int, priority: Int? = nil) {
            self.priority = priority

            self.action = action

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(action, forKey: .action)

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
        public var priority: Int?

        public var action: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case priority

            case action

            case itemId = "item_id"
        }

        public init(action: String, itemId: Int, priority: Int? = nil) {
            self.priority = priority

            self.action = action

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            action = try container.decode(String.self, forKey: .action)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
