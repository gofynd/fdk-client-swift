

import Foundation
public extension PlatformClient {
    /*
         Model: EntityRegionView_page
         Used By: Serviceability
     */

    class EntityRegionView_page: Codable {
        public var itemTotal: Int

        public var size: Int

        public var current: Int

        public var type: String

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case size

            case current

            case type

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.itemTotal = itemTotal

            self.size = size

            self.current = current

            self.type = type

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            size = try container.decode(Int.self, forKey: .size)

            current = try container.decode(Int.self, forKey: .current)

            type = try container.decode(String.self, forKey: .type)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}
