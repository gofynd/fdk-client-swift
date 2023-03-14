

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Page1
         Used By: Order
     */

    class Page1: Codable {
        public var pageType: String

        public var current: Int

        public var size: Int

        public var itemTotal: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case pageType = "page_type"

            case current

            case size

            case itemTotal = "item_total"

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, pageType: String, size: Int) {
            self.pageType = pageType

            self.current = current

            self.size = size

            self.itemTotal = itemTotal

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageType = try container.decode(String.self, forKey: .pageType)

            current = try container.decode(Int.self, forKey: .current)

            size = try container.decode(Int.self, forKey: .size)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageType, forKey: .pageType)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Page1
         Used By: Order
     */

    class Page1: Codable {
        public var pageType: String

        public var current: Int

        public var size: Int

        public var itemTotal: Int

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case pageType = "page_type"

            case current

            case size

            case itemTotal = "item_total"

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, pageType: String, size: Int) {
            self.pageType = pageType

            self.current = current

            self.size = size

            self.itemTotal = itemTotal

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageType = try container.decode(String.self, forKey: .pageType)

            current = try container.decode(Int.self, forKey: .current)

            size = try container.decode(Int.self, forKey: .size)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageType, forKey: .pageType)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}
