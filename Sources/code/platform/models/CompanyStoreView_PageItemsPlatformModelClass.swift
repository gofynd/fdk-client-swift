import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyStoreView_PageItems
         Used By: Serviceability
     */

    class CompanyStoreView_PageItems: Codable {
        public var type: String

        public var size: Int

        public var current: Int

        public var hasNext: Bool

        public var itemTotal: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case size

            case current

            case hasNext = "has_next"

            case itemTotal = "item_total"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.type = type

            self.size = size

            self.current = current

            self.hasNext = hasNext

            self.itemTotal = itemTotal
        }

        public func duplicate() -> CompanyStoreView_PageItems {
            let dict = self.dictionary!
            let copy = CompanyStoreView_PageItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            size = try container.decode(Int.self, forKey: .size)

            current = try container.decode(Int.self, forKey: .current)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
        }
    }
}
