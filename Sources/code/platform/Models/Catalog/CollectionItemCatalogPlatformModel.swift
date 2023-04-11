

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CollectionItem
         Used By: Catalog
     */

    class CollectionItem: Codable {
        public var itemId: Int

        public var action: String

        public var priority: Int?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case action

            case priority
        }

        public init(action: String, itemId: Int, priority: Int? = nil) {
            self.itemId = itemId

            self.action = action

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            action = try container.decode(String.self, forKey: .action)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(priority, forKey: .priority)
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

        public var action: String

        public var priority: Int?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case action

            case priority
        }

        public init(action: String, itemId: Int, priority: Int? = nil) {
            self.itemId = itemId

            self.action = action

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            action = try container.decode(String.self, forKey: .action)

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}
