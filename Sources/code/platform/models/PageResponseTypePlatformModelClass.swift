

import Foundation
public extension PlatformClient {
    /*
         Model: PageResponseType
         Used By: Catalog
     */

    class PageResponseType: Codable {
        public var hasNext: Bool

        public var totalCount: Int

        public var current: Int

        public var next: Int

        public enum CodingKeys: String, CodingKey {
            case hasNext = "has_next"

            case totalCount = "total_count"

            case current

            case next
        }

        public init(current: Int, hasNext: Bool, next: Int, totalCount: Int) {
            self.hasNext = hasNext

            self.totalCount = totalCount

            self.current = current

            self.next = next
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            totalCount = try container.decode(Int.self, forKey: .totalCount)

            current = try container.decode(Int.self, forKey: .current)

            next = try container.decode(Int.self, forKey: .next)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(totalCount, forKey: .totalCount)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(next, forKey: .next)
        }
    }
}
