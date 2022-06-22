

import Foundation
public extension PlatformClient {
    /*
         Model: DiscountRule
         Used By: Cart
     */

    class DiscountRule: Codable {
        public var discountType: String

        public var itemCriteria: ItemCriteria

        public var buyCondition: String

        public var offer: DiscountOffer

        public enum CodingKeys: String, CodingKey {
            case discountType = "discount_type"

            case itemCriteria = "item_criteria"

            case buyCondition = "buy_condition"

            case offer
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteria, offer: DiscountOffer) {
            self.discountType = discountType

            self.itemCriteria = itemCriteria

            self.buyCondition = buyCondition

            self.offer = offer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discountType = try container.decode(String.self, forKey: .discountType)

            itemCriteria = try container.decode(ItemCriteria.self, forKey: .itemCriteria)

            buyCondition = try container.decode(String.self, forKey: .buyCondition)

            offer = try container.decode(DiscountOffer.self, forKey: .offer)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discountType, forKey: .discountType)

            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)

            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)

            try? container.encodeIfPresent(offer, forKey: .offer)
        }
    }
}
