

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryPage
         Used By: Catalog
     */

    class InventoryPage: Codable {
        public var hasNext: Bool?

        public var itemTotal: Int

        public var type: String

        public var hasPrevious: Bool?

        public var nextId: String?

        public enum CodingKeys: String, CodingKey {
            case hasNext = "has_next"

            case itemTotal = "item_total"

            case type

            case hasPrevious = "has_previous"

            case nextId = "next_id"
        }

        public init(hasNext: Bool? = nil, hasPrevious: Bool? = nil, itemTotal: Int, nextId: String? = nil, type: String) {
            self.hasNext = hasNext

            self.itemTotal = itemTotal

            self.type = type

            self.hasPrevious = hasPrevious

            self.nextId = nextId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            type = try container.decode(String.self, forKey: .type)

            do {
                hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextId = try container.decode(String.self, forKey: .nextId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(nextId, forKey: .nextId)
        }
    }
}