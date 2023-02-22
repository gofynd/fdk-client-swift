

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: ZoneDataItem
         Used By: Logistic
     */

    class ZoneDataItem: Codable {
        public var itemTotal: Int

        public var size: Int

        public var hasNext: Bool

        public var current: Int

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case size

            case hasNext = "has_next"

            case current

            case type
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.itemTotal = itemTotal

            self.size = size

            self.hasNext = hasNext

            self.current = current

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: ZoneDataItem
         Used By: Logistic
     */

    class ZoneDataItem: Codable {
        public var itemTotal: Int

        public var size: Int

        public var hasNext: Bool

        public var current: Int

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case size

            case hasNext = "has_next"

            case current

            case type
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.itemTotal = itemTotal

            self.size = size

            self.hasNext = hasNext

            self.current = current

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
