

import Foundation
public extension PlatformClient {
    /*
         Model: ItemQueryForUserCollection
         Used By: Catalog
     */

    class ItemQueryForUserCollection: Codable {
        public var itemId: Int?

        public var action: String?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case action
        }

        public init(action: String? = nil, itemId: Int? = nil) {
            self.itemId = itemId

            self.action = action
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
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
