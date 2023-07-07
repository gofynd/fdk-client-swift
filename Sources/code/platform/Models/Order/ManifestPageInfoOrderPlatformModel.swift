

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var total: Int

        public var type: String

        public var size: Int

        public var current: Int

        public var hasNext: Bool

        public var hasPrevious: Bool

        public enum CodingKeys: String, CodingKey {
            case total

            case type

            case size

            case current

            case hasNext = "has_next"

            case hasPrevious = "has_previous"
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.total = total

            self.type = type

            self.size = size

            self.current = current

            self.hasNext = hasNext

            self.hasPrevious = hasPrevious
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            total = try container.decode(Int.self, forKey: .total)

            type = try container.decode(String.self, forKey: .type)

            size = try container.decode(Int.self, forKey: .size)

            current = try container.decode(Int.self, forKey: .current)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

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
        public var total: Int

        public var type: String

        public var size: Int

        public var current: Int

        public var hasNext: Bool

        public var hasPrevious: Bool

        public enum CodingKeys: String, CodingKey {
            case total

            case type

            case size

            case current

            case hasNext = "has_next"

            case hasPrevious = "has_previous"
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.total = total

            self.type = type

            self.size = size

            self.current = current

            self.hasNext = hasNext

            self.hasPrevious = hasPrevious
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            total = try container.decode(Int.self, forKey: .total)

            type = try container.decode(String.self, forKey: .type)

            size = try container.decode(Int.self, forKey: .size)

            current = try container.decode(Int.self, forKey: .current)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        }
    }
}
