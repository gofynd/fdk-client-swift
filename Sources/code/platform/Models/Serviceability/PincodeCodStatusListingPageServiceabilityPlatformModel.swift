

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: PincodeCodStatusListingPage
         Used By: Serviceability
     */

    class PincodeCodStatusListingPage: Codable {
        public var type: String

        public var hasNext: Bool

        public var currentPageNumber: Int

        public var itemTotal: Int

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case hasNext = "has_next"

            case currentPageNumber = "current_page_number"

            case itemTotal = "item_total"

            case size
        }

        public init(currentPageNumber: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.type = type

            self.hasNext = hasNext

            self.currentPageNumber = currentPageNumber

            self.itemTotal = itemTotal

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            currentPageNumber = try container.decode(Int.self, forKey: .currentPageNumber)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(currentPageNumber, forKey: .currentPageNumber)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: PincodeCodStatusListingPage
         Used By: Serviceability
     */

    class PincodeCodStatusListingPage: Codable {
        public var type: String

        public var hasNext: Bool

        public var currentPageNumber: Int

        public var itemTotal: Int

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case hasNext = "has_next"

            case currentPageNumber = "current_page_number"

            case itemTotal = "item_total"

            case size
        }

        public init(currentPageNumber: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.type = type

            self.hasNext = hasNext

            self.currentPageNumber = currentPageNumber

            self.itemTotal = itemTotal

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            currentPageNumber = try container.decode(Int.self, forKey: .currentPageNumber)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(currentPageNumber, forKey: .currentPageNumber)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
