

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var hasPrevious: Bool

        public var size: Int

        public var total: Int

        public var type: String

        public var current: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case hasPrevious = "has_previous"

            case size

            case total

            case type

            case current

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.hasPrevious = hasPrevious

            self.size = size

            self.total = total

            self.type = type

            self.current = current

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            size = try container.decode(Int.self, forKey: .size)

            total = try container.decode(Int.self, forKey: .total)

            type = try container.decode(String.self, forKey: .type)

            current = try container.decode(Int.self, forKey: .current)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(current, forKey: .current)

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
        public var hasPrevious: Bool

        public var size: Int

        public var total: Int

        public var type: String

        public var current: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case hasPrevious = "has_previous"

            case size

            case total

            case type

            case current

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.hasPrevious = hasPrevious

            self.size = size

            self.total = total

            self.type = type

            self.current = current

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            size = try container.decode(Int.self, forKey: .size)

            total = try container.decode(Int.self, forKey: .total)

            type = try container.decode(String.self, forKey: .type)

            current = try container.decode(Int.self, forKey: .current)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}
