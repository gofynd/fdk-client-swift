

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: ZoneDataItem
         Used By: Serviceability
     */

    class ZoneDataItem: Codable {
        public var itemTotal: Int

        public var type: String

        public var hasNext: Bool

        public var size: Int

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case type

            case hasNext = "has_next"

            case size

            case current
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.itemTotal = itemTotal

            self.type = type

            self.hasNext = hasNext

            self.size = size

            self.current = current
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            type = try container.decode(String.self, forKey: .type)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            size = try container.decode(Int.self, forKey: .size)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: ZoneDataItem
         Used By: Serviceability
     */

    class ZoneDataItem: Codable {
        public var itemTotal: Int

        public var type: String

        public var hasNext: Bool

        public var size: Int

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case type

            case hasNext = "has_next"

            case size

            case current
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.itemTotal = itemTotal

            self.type = type

            self.hasNext = hasNext

            self.size = size

            self.current = current
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            type = try container.decode(String.self, forKey: .type)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            size = try container.decode(Int.self, forKey: .size)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)
        }
    }
}
