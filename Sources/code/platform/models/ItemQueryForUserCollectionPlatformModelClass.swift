

import Foundation
public extension PlatformClient {
    /*
         Model: ItemQueryForUserCollection
         Used By: Catalog
     */

    class ItemQueryForUserCollection: Codable {
        public var action: String?

        public var priority: Int?

        public var itemId: Int?

        public enum CodingKeys: String, CodingKey {
            case action

            case priority

            case itemId = "item_id"
        }

        public init(action: String? = nil, itemId: Int? = nil, priority: Int? = nil) {
            self.action = action

            self.priority = priority

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
