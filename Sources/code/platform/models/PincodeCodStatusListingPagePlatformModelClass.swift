

import Foundation
public extension PlatformClient {
    /*
         Model: PincodeCodStatusListingPage
         Used By: Serviceability
     */

    class PincodeCodStatusListingPage: Codable {
        public var currentPageNumber: Int

        public var itemTotal: Int

        public var size: Int

        public var hasNext: Bool

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case currentPageNumber = "current_page_number"

            case itemTotal = "item_total"

            case size

            case hasNext = "has_next"

            case type
        }

        public init(currentPageNumber: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.currentPageNumber = currentPageNumber

            self.itemTotal = itemTotal

            self.size = size

            self.hasNext = hasNext

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currentPageNumber = try container.decode(Int.self, forKey: .currentPageNumber)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            size = try container.decode(Int.self, forKey: .size)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currentPageNumber, forKey: .currentPageNumber)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}