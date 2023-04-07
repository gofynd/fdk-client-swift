

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Page1
         Used By: Order
     */

    class Page1: Codable {
        public var current: Int

        public var itemTotal: Int

        public var hasNext: Bool

        public var pageType: String

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case current

            case itemTotal = "item_total"

            case hasNext = "has_next"

            case pageType = "page_type"

            case size
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, pageType: String, size: Int) {
            self.current = current

            self.itemTotal = itemTotal

            self.hasNext = hasNext

            self.pageType = pageType

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            current = try container.decode(Int.self, forKey: .current)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            pageType = try container.decode(String.self, forKey: .pageType)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(pageType, forKey: .pageType)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Page1
         Used By: Order
     */

    class Page1: Codable {
        public var current: Int

        public var itemTotal: Int

        public var hasNext: Bool

        public var pageType: String

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case current

            case itemTotal = "item_total"

            case hasNext = "has_next"

            case pageType = "page_type"

            case size
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, pageType: String, size: Int) {
            self.current = current

            self.itemTotal = itemTotal

            self.hasNext = hasNext

            self.pageType = pageType

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            current = try container.decode(Int.self, forKey: .current)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            pageType = try container.decode(String.self, forKey: .pageType)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(pageType, forKey: .pageType)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
