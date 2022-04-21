

import Foundation
public extension PlatformClient {
    /*
         Model: CartItemMeta
         Used By: Cart
     */

    class CartItemMeta: Codable {
        public var groupId: String?

        public var primaryItem: Bool?

        public enum CodingKeys: String, CodingKey {
            case groupId = "group_id"

            case primaryItem = "primary_item"
        }

        public init(groupId: String? = nil, primaryItem: Bool? = nil) {
            self.groupId = groupId

            self.primaryItem = primaryItem
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                groupId = try container.decode(String.self, forKey: .groupId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                primaryItem = try container.decode(Bool.self, forKey: .primaryItem)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(groupId, forKey: .groupId)

            try? container.encodeIfPresent(primaryItem, forKey: .primaryItem)
        }
    }
}
