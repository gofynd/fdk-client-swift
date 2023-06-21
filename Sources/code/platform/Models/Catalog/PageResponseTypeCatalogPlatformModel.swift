

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: PageResponseType
         Used By: Catalog
     */

    class PageResponseType: Codable {
        public var totalCount: Int

        public var current: Int

        public var next: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case totalCount = "total_count"

            case current

            case next

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, next: Int, totalCount: Int) {
            self.totalCount = totalCount

            self.current = current

            self.next = next

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            current = try container.decode(Int.self, forKey: .current)

            next = try container.decode(Int.self, forKey: .next)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(next, forKey: .next)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: PageResponseType
         Used By: Catalog
     */

    class PageResponseType: Codable {
        public var totalCount: Int

        public var current: Int

        public var next: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case totalCount = "total_count"

            case current

            case next

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, next: Int, totalCount: Int) {
            self.totalCount = totalCount

            self.current = current

            self.next = next

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            current = try container.decode(Int.self, forKey: .current)

            next = try container.decode(Int.self, forKey: .next)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(next, forKey: .next)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}
