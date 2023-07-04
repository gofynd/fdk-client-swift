

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var hasNext: Bool

        public var size: Int

        public var current: Int

        public var hasPrevious: Bool

        public var type: String

        public var total: Int

        public enum CodingKeys: String, CodingKey {
            case hasNext = "has_next"

            case size

            case current

            case hasPrevious = "has_previous"

            case type

            case total
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.hasNext = hasNext

            self.size = size

            self.current = current

            self.hasPrevious = hasPrevious

            self.type = type

            self.total = total
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            size = try container.decode(Int.self, forKey: .size)

            current = try container.decode(Int.self, forKey: .current)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            type = try container.decode(String.self, forKey: .type)

            total = try container.decode(Int.self, forKey: .total)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(total, forKey: .total)
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

        public var size: Int

        public var current: Int

        public var hasPrevious: Bool

        public var type: String

        public var total: Int

        public enum CodingKeys: String, CodingKey {
            case hasNext = "has_next"

            case size

            case current

            case hasPrevious = "has_previous"

            case type

            case total
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.hasNext = hasNext

            self.size = size

            self.current = current

            self.hasPrevious = hasPrevious

            self.type = type

            self.total = total
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            size = try container.decode(Int.self, forKey: .size)

            current = try container.decode(Int.self, forKey: .current)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)

            type = try container.decode(String.self, forKey: .type)

            total = try container.decode(Int.self, forKey: .total)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(total, forKey: .total)
        }
    }
}
