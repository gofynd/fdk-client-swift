

import Foundation
public extension PlatformClient {
    /*
         Model: Page1
         Used By: Order
     */

    class Page1: Codable {
        public var size: Int

        public var itemTotal: Int

        public var hasNext: Bool

        public var current: Int

        public var pageType: String

        public enum CodingKeys: String, CodingKey {
            case size

            case itemTotal = "item_total"

            case hasNext = "has_next"

            case current

            case pageType = "page_type"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, pageType: String, size: Int) {
            self.size = size

            self.itemTotal = itemTotal

            self.hasNext = hasNext

            self.current = current

            self.pageType = pageType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(Int.self, forKey: .size)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)

            pageType = try container.decode(String.self, forKey: .pageType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(pageType, forKey: .pageType)
        }
    }
}
