

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: PincodeCodStatusListingPage
         Used By: Serviceability
     */

    class PincodeCodStatusListingPage: Codable {
        public var current: Int

        public var size: Int

        public var type: String

        public var hasNext: Bool

        public var itemTotal: Int

        public enum CodingKeys: String, CodingKey {
            case current

            case size

            case type

            case hasNext = "has_next"

            case itemTotal = "item_total"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.current = current

            self.size = size

            self.type = type

            self.hasNext = hasNext

            self.itemTotal = itemTotal
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            current = try container.decode(Int.self, forKey: .current)

            size = try container.decode(Int.self, forKey: .size)

            type = try container.decode(String.self, forKey: .type)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: PincodeCodStatusListingPage
         Used By: Serviceability
     */

    class PincodeCodStatusListingPage: Codable {
        public var current: Int

        public var size: Int

        public var type: String

        public var hasNext: Bool

        public var itemTotal: Int

        public enum CodingKeys: String, CodingKey {
            case current

            case size

            case type

            case hasNext = "has_next"

            case itemTotal = "item_total"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.current = current

            self.size = size

            self.type = type

            self.hasNext = hasNext

            self.itemTotal = itemTotal
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            current = try container.decode(Int.self, forKey: .current)

            size = try container.decode(Int.self, forKey: .size)

            type = try container.decode(String.self, forKey: .type)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
        }
    }
}
