

import Foundation
public extension PlatformClient {
    /*
         Model: PincodeCodStatusListingPage
         Used By: Serviceability
     */

    class PincodeCodStatusListingPage: Codable {
        public var size: Int

        public var itemTotal: Int

        public var hasNext: Bool

        public var type: String

        public var currentPageNumber: Int

        public enum CodingKeys: String, CodingKey {
            case size

            case itemTotal = "item_total"

            case hasNext = "has_next"

            case type

            case currentPageNumber = "current_page_number"
        }

        public init(currentPageNumber: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.size = size

            self.itemTotal = itemTotal

            self.hasNext = hasNext

            self.type = type

            self.currentPageNumber = currentPageNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(Int.self, forKey: .size)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            type = try container.decode(String.self, forKey: .type)

            currentPageNumber = try container.decode(Int.self, forKey: .currentPageNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(currentPageNumber, forKey: .currentPageNumber)
        }
    }
}
