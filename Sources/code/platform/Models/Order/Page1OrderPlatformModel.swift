

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Page1
         Used By: Order
     */

    class Page1: Codable {
        public var hasNext: Bool

        public var current: Int

        public var itemTotal: Int

        public var pageType: String

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case hasNext = "has_next"

            case current

            case itemTotal = "item_total"

            case pageType = "page_type"

            case size
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, pageType: String, size: Int) {
            self.hasNext = hasNext

            self.current = current

            self.itemTotal = itemTotal

            self.pageType = pageType

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            pageType = try container.decode(String.self, forKey: .pageType)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

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
        public var hasNext: Bool

        public var current: Int

        public var itemTotal: Int

        public var pageType: String

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case hasNext = "has_next"

            case current

            case itemTotal = "item_total"

            case pageType = "page_type"

            case size
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, pageType: String, size: Int) {
            self.hasNext = hasNext

            self.current = current

            self.itemTotal = itemTotal

            self.pageType = pageType

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            current = try container.decode(Int.self, forKey: .current)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            pageType = try container.decode(String.self, forKey: .pageType)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(pageType, forKey: .pageType)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
