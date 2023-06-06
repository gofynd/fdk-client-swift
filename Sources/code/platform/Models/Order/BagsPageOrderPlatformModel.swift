

import Foundation

public extension PlatformClient.Order {
    /*
         Model: BagsPage
         Used By: Order
     */

    class BagsPage: Codable {
        public var itemTotal: Int

        public var size: Int

        public var current: Int

        public var hasNext: Bool

        public var pageType: String

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case size

            case current

            case hasNext = "has_next"

            case pageType = "page_type"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, pageType: String, size: Int) {
            self.itemTotal = itemTotal

            self.size = size

            self.current = current

            self.hasNext = hasNext

            self.pageType = pageType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            size = try container.decode(Int.self, forKey: .size)

            current = try container.decode(Int.self, forKey: .current)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            pageType = try container.decode(String.self, forKey: .pageType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(pageType, forKey: .pageType)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: BagsPage
         Used By: Order
     */

    class BagsPage: Codable {
        public var itemTotal: Int

        public var size: Int

        public var current: Int

        public var hasNext: Bool

        public var pageType: String

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case size

            case current

            case hasNext = "has_next"

            case pageType = "page_type"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, pageType: String, size: Int) {
            self.itemTotal = itemTotal

            self.size = size

            self.current = current

            self.hasNext = hasNext

            self.pageType = pageType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            size = try container.decode(Int.self, forKey: .size)

            current = try container.decode(Int.self, forKey: .current)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            pageType = try container.decode(String.self, forKey: .pageType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(pageType, forKey: .pageType)
        }
    }
}
