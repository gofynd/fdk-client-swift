

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryPage
         Used By: Catalog
     */

    class InventoryPage: Codable {
        public var itemTotal: Int

        public var nextId: String?

        public var hasNext: Bool?

        public var hasPrevious: Bool?

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case nextId = "next_id"

            case hasNext = "has_next"

            case hasPrevious = "has_previous"

            case type
        }

        public init(hasNext: Bool? = nil, hasPrevious: Bool? = nil, itemTotal: Int, nextId: String? = nil, type: String) {
            self.itemTotal = itemTotal

            self.nextId = nextId

            self.hasNext = hasNext

            self.hasPrevious = hasPrevious

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            do {
                nextId = try container.decode(String.self, forKey: .nextId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(nextId, forKey: .nextId)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
