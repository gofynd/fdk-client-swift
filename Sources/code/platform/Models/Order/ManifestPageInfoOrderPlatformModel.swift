

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var type: String

        public var hasNext: Bool

        public var size: Int

        public var total: Int

        public var hasPrevious: Bool

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case hasNext = "has_next"

            case size

            case total

            case hasPrevious = "has_previous"

            case current
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.type = type

            self.hasNext = hasNext

            self.size = size

            self.total = total

            self.hasPrevious = hasPrevious

            self.current = current
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            size = try container.decode(Int.self, forKey: .size)

            total = try container.decode(Int.self, forKey: .total)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(current, forKey: .current)
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

        public var hasNext: Bool

        public var size: Int

        public var total: Int

        public var hasPrevious: Bool

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case hasNext = "has_next"

            case size

            case total

            case hasPrevious = "has_previous"

            case current
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.type = type

            self.hasNext = hasNext

            self.size = size

            self.total = total

            self.hasPrevious = hasPrevious

            self.current = current
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            size = try container.decode(Int.self, forKey: .size)

            total = try container.decode(Int.self, forKey: .total)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(current, forKey: .current)
        }
    }
}
