

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ManifestPageInfo
         Used By: Order
     */

    class ManifestPageInfo: Codable {
        public var size: Int

        public var hasNext: Bool

        public var current: Int

        public var type: String

        public var total: Int

        public var hasPrevious: Bool

        public enum CodingKeys: String, CodingKey {
            case size

            case hasNext = "has_next"

            case current

            case type

            case total

            case hasPrevious = "has_previous"
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.size = size

            self.hasNext = hasNext

            self.current = current

            self.type = type

            self.total = total

            self.hasPrevious = hasPrevious
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)

            type = try container.decode(String.self, forKey: .type)

            total = try container.decode(Int.self, forKey: .total)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(total, forKey: .total)

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
        public var size: Int

        public var hasNext: Bool

        public var current: Int

        public var type: String

        public var total: Int

        public var hasPrevious: Bool

        public enum CodingKeys: String, CodingKey {
            case size

            case hasNext = "has_next"

            case current

            case type

            case total

            case hasPrevious = "has_previous"
        }

        public init(current: Int, hasNext: Bool, hasPrevious: Bool, size: Int, total: Int, type: String) {
            self.size = size

            self.hasNext = hasNext

            self.current = current

            self.type = type

            self.total = total

            self.hasPrevious = hasPrevious
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)

            type = try container.decode(String.self, forKey: .type)

            total = try container.decode(Int.self, forKey: .total)

            hasPrevious = try container.decode(Bool.self, forKey: .hasPrevious)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(total, forKey: .total)

            try? container.encodeIfPresent(hasPrevious, forKey: .hasPrevious)
        }
    }
}
