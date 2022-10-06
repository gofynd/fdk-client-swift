

import Foundation
public extension PlatformClient {
    /*
         Model: PageResponseType
         Used By: Catalog
     */

    class PageResponseType: Codable {
        public var next: Int

        public var totalCount: Int

        public var current: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case next

            case totalCount = "total_count"

            case current

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, next: Int, totalCount: Int) {
            self.next = next

            self.totalCount = totalCount

            self.current = current

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            next = try container.decode(Int.self, forKey: .next)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            current = try container.decode(Int.self, forKey: .current)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(next, forKey: .next)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}
