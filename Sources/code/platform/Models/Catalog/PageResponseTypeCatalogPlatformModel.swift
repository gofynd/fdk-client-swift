

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: PageResponseType
         Used By: Catalog
     */

    class PageResponseType: Codable {
        public var next: Int

        public var hasNext: Bool

        public var totalCount: Int

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case next

            case hasNext = "has_next"

            case totalCount = "total_count"

            case current
        }

        public init(current: Int, hasNext: Bool, next: Int, totalCount: Int) {
            self.next = next

            self.hasNext = hasNext

            self.totalCount = totalCount

            self.current = current
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            next = try container.decode(Int.self, forKey: .next)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(next, forKey: .next)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(current, forKey: .current)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: PageResponseType
         Used By: Catalog
     */

    class PageResponseType: Codable {
        public var next: Int

        public var hasNext: Bool

        public var totalCount: Int

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case next

            case hasNext = "has_next"

            case totalCount = "total_count"

            case current
        }

        public init(current: Int, hasNext: Bool, next: Int, totalCount: Int) {
            self.next = next

            self.hasNext = hasNext

            self.totalCount = totalCount

            self.current = current
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            next = try container.decode(Int.self, forKey: .next)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(next, forKey: .next)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(current, forKey: .current)
        }
    }
}
