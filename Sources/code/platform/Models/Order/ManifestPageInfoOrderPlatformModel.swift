

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var type: String

        public var hasPrevious: Bool

        public var total: Int

        public var hasNext: Bool

        public var current: Int

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case hasPrevious = "has_previous"

            case total

            case hasNext = "has_next"

            case current

            case size
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.type = type

            self.hasPrevious = hasPrevious

            self.total = total

            self.hasNext = hasNext

            self.current = current

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            total = try container.decode(Int.self, forKey: .total)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var type: String

        public var hasPrevious: Bool

        public var total: Int

        public var hasNext: Bool

        public var current: Int

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case hasPrevious = "has_previous"

            case total

            case hasNext = "has_next"

            case current

            case size
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.type = type

            self.hasPrevious = hasPrevious

            self.total = total

            self.hasNext = hasNext

            self.current = current

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            total = try container.decode(Int.self, forKey: .total)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
