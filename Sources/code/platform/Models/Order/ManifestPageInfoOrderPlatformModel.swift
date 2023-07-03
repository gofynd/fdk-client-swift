

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var hasPrevious: Bool

        public var hasNext: Bool

        public var size: Int

        public var total: Int

        public var type: String

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case hasPrevious = "has_previous"

            case hasNext = "has_next"

            case size

            case total

            case type

            case current
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.hasPrevious = hasPrevious

            self.hasNext = hasNext

            self.size = size

            self.total = total

            self.type = type

            self.current = current
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            size = try container.decode(Int.self, forKey: .size)

            total = try container.decode(Int.self, forKey: .total)

            type = try container.decode(String.self, forKey: .type)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(type, forKey: .type)

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
        public var hasPrevious: Bool

        public var hasNext: Bool

        public var size: Int

        public var total: Int

        public var type: String

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case hasPrevious = "has_previous"

            case hasNext = "has_next"

            case size

            case total

            case type

            case current
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.hasPrevious = hasPrevious

            self.hasNext = hasNext

            self.size = size

            self.total = total

            self.type = type

            self.current = current
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            size = try container.decode(Int.self, forKey: .size)

            total = try container.decode(Int.self, forKey: .total)

            type = try container.decode(String.self, forKey: .type)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(current, forKey: .current)
        }
    }
}
