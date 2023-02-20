

import Foundation
public extension PlatformClient {
    /*
         Model: PincodeCodStatusListingPage
         Used By: Logistic
     */

    class PincodeCodStatusListingPage: Codable {
        public var itemTotal: Int

        public var currentPageNumber: Int

        public var hasNext: Bool

        public var type: String

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case currentPageNumber = "current_page_number"

            case hasNext = "has_next"

            case type

            case size
        }

        public init(currentPageNumber: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.itemTotal = itemTotal

            self.currentPageNumber = currentPageNumber

            self.hasNext = hasNext

            self.type = type

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            currentPageNumber = try container.decode(Int.self, forKey: .currentPageNumber)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            type = try container.decode(String.self, forKey: .type)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(currentPageNumber, forKey: .currentPageNumber)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
