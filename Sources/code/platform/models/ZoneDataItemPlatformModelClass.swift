

import Foundation
public extension PlatformClient {
    /*
         Model: ZoneDataItem
         Used By: Serviceability
     */

    class ZoneDataItem: Codable {
        public var size: Int

        public var hasNext: Bool

        public var type: String

        public var itemTotal: Int

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case hasNext = "has_next"

            case type

            case itemTotal = "item_total"

            case current
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.size = size

            self.hasNext = hasNext

            self.type = type

            self.itemTotal = itemTotal

            self.current = current
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            type = try container.decode(String.self, forKey: .type)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(current, forKey: .current)
        }
    }
}
