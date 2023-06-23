

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var hasNext: Bool

        public var type: String

        public var current: Int

        public var total: Int

        public var hasPrevious: Bool

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case hasNext = "has_next"

            case type

            case current

            case total

            case hasPrevious = "has_previous"

            case size
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.hasNext = hasNext

            self.type = type

            self.current = current

            self.total = total

            self.hasPrevious = hasPrevious

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            type = try container.decode(String.self, forKey: .type)

            current = try container.decode(Int.self, forKey: .current)

            total = try container.decode(Int.self, forKey: .total)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

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
        public var hasNext: Bool

        public var type: String

        public var current: Int

        public var total: Int

        public var hasPrevious: Bool

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case hasNext = "has_next"

            case type

            case current

            case total

            case hasPrevious = "has_previous"

            case size
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.hasNext = hasNext

            self.type = type

            self.current = current

            self.total = total

            self.hasPrevious = hasPrevious

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            type = try container.decode(String.self, forKey: .type)

            current = try container.decode(Int.self, forKey: .current)

            total = try container.decode(Int.self, forKey: .total)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
