

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: EntityRegionView_page
         Used By: Serviceability
     */

    class EntityRegionView_page: Codable {
        public var hasNext: Bool

        public var current: Int

        public var size: Int

        public var itemTotal: Int

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case hasNext = "has_next"

            case current

            case size

            case itemTotal = "item_total"

            case type
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.hasNext = hasNext

            self.current = current

            self.size = size

            self.itemTotal = itemTotal

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)

            size = try container.decode(Int.self, forKey: .size)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: EntityRegionView_page
         Used By: Serviceability
     */

    class EntityRegionView_page: Codable {
        public var hasNext: Bool

        public var current: Int

        public var size: Int

        public var itemTotal: Int

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case hasNext = "has_next"

            case current

            case size

            case itemTotal = "item_total"

            case type
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.hasNext = hasNext

            self.current = current

            self.size = size

            self.itemTotal = itemTotal

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)

            size = try container.decode(Int.self, forKey: .size)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
