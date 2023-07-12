

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var current: Int

        public var type: String

        public var hasPrevious: Bool

        public var total: Int

        public var size: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case current

            case type

            case hasPrevious = "has_previous"

            case total

            case size

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.current = current

            self.type = type

            self.hasPrevious = hasPrevious

            self.total = total

            self.size = size

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            current = try container.decode(Int.self, forKey: .current)

            type = try container.decode(String.self, forKey: .type)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            total = try container.decode(Int.self, forKey: .total)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var current: Int

        public var type: String

        public var hasPrevious: Bool

        public var total: Int

        public var size: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case current

            case type

            case hasPrevious = "has_previous"

            case total

            case size

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.current = current

            self.type = type

            self.hasPrevious = hasPrevious

            self.total = total

            self.size = size

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            current = try container.decode(Int.self, forKey: .current)

            type = try container.decode(String.self, forKey: .type)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            total = try container.decode(Int.self, forKey: .total)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}
