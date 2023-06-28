

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var type: String

        public var current: Int

        public var size: Int

        public var total: Int

        public var hasNext: Bool

        public var hasPrevious: Bool

        public enum CodingKeys: String, CodingKey {
            case type

            case current

            case size

            case total

            case hasNext = "has_next"

            case hasPrevious = "has_previous"
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.type = type

            self.current = current

            self.size = size

            self.total = total

            self.hasNext = hasNext

            self.hasPrevious = hasPrevious
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            current = try container.decode(Int.self, forKey: .current)

            size = try container.decode(Int.self, forKey: .size)

            total = try container.decode(Int.self, forKey: .total)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
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

        public var current: Int

        public var size: Int

        public var total: Int

        public var hasNext: Bool

        public var hasPrevious: Bool

        public enum CodingKeys: String, CodingKey {
            case type

            case current

            case size

            case total

            case hasNext = "has_next"

            case hasPrevious = "has_previous"
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.type = type

            self.current = current

            self.size = size

            self.total = total

            self.hasNext = hasNext

            self.hasPrevious = hasPrevious
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            current = try container.decode(Int.self, forKey: .current)

            size = try container.decode(Int.self, forKey: .size)

            total = try container.decode(Int.self, forKey: .total)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        }
    }
}
