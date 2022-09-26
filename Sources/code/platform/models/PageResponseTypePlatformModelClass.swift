

import Foundation
public extension PlatformClient {
    /*
         Model: PageResponseType
         Used By: Catalog
     */

    class PageResponseType: Codable {
        public var current: Int

        public var totalCount: Int

        public var next: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case current

            case totalCount = "total_count"

            case next

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, next: Int, totalCount: Int) {
            self.current = current

            self.totalCount = totalCount

            self.next = next

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            current = try container.decode(Int.self, forKey: .current)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            next = try container.decode(Int.self, forKey: .next)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(next, forKey: .next)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}
