

import Foundation
public extension PlatformClient {
    /*
         Model: DiscountRule
         Used By: Cart
     */

    class DiscountRule: Codable {
        public var buyCondition: String

        public var offer: DiscountOffer

        public var itemCriteria: ItemCriteria

        public var discountType: String

        public enum CodingKeys: String, CodingKey {
            case buyCondition = "buy_condition"

            case offer

            case itemCriteria = "item_criteria"

            case discountType = "discount_type"
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteria, offer: DiscountOffer) {
            self.buyCondition = buyCondition

            self.offer = offer

            self.itemCriteria = itemCriteria

            self.discountType = discountType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            buyCondition = try container.decode(String.self, forKey: .buyCondition)

            offer = try container.decode(DiscountOffer.self, forKey: .offer)

            itemCriteria = try container.decode(ItemCriteria.self, forKey: .itemCriteria)

            discountType = try container.decode(String.self, forKey: .discountType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)

            try? container.encodeIfPresent(offer, forKey: .offer)

            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)

            try? container.encodeIfPresent(discountType, forKey: .discountType)
        }
    }
}
