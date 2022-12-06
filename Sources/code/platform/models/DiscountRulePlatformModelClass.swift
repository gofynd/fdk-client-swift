

import Foundation
public extension PlatformClient {
    /*
         Model: DiscountRule
         Used By: Cart
     */

    class DiscountRule: Codable {
        public var discountType: String

        public var buyCondition: String

        public var offer: DiscountOffer

        public var itemCriteria: ItemCriteria

        public enum CodingKeys: String, CodingKey {
            case discountType = "discount_type"

            case buyCondition = "buy_condition"

            case offer

            case itemCriteria = "item_criteria"
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteria, offer: DiscountOffer) {
            self.discountType = discountType

            self.buyCondition = buyCondition

            self.offer = offer

            self.itemCriteria = itemCriteria
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discountType = try container.decode(String.self, forKey: .discountType)

            buyCondition = try container.decode(String.self, forKey: .buyCondition)

            offer = try container.decode(DiscountOffer.self, forKey: .offer)

            itemCriteria = try container.decode(ItemCriteria.self, forKey: .itemCriteria)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discountType, forKey: .discountType)

            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)

            try? container.encodeIfPresent(offer, forKey: .offer)

            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
        }
    }
}
