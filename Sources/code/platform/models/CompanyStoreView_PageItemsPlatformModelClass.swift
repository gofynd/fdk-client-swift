

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyStoreView_PageItems
         Used By: Logistic
     */

    class CompanyStoreView_PageItems: Codable {
        public var itemTotal: Int

        public var current: Int

        public var hasNext: Bool

        public var type: String

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case current

            case hasNext = "has_next"

            case type

            case size
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.itemTotal = itemTotal

            self.current = current

            self.hasNext = hasNext

            self.type = type

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            current = try container.decode(Int.self, forKey: .current)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            type = try container.decode(String.self, forKey: .type)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
