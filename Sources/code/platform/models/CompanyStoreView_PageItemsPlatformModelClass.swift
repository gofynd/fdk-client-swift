

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyStoreView_PageItems
         Used By: Logistic
     */

    class CompanyStoreView_PageItems: Codable {
        public var itemTotal: Int

        public var current: Int

        public var size: Int

        public var type: String

        public var hasNext: Bool

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case current

            case size

            case type

            case hasNext = "has_next"
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.itemTotal = itemTotal

            self.current = current

            self.size = size

            self.type = type

            self.hasNext = hasNext
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            current = try container.decode(Int.self, forKey: .current)

            size = try container.decode(Int.self, forKey: .size)

            type = try container.decode(String.self, forKey: .type)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }
}
