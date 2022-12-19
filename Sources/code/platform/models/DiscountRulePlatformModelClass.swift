

import Foundation
public extension PlatformClient {
    /*
         Model: DiscountRule
         Used By: Cart
     */

    class DiscountRule: Codable {
        public var itemCriteria: ItemCriteria

        public var discountType: String

        public var offer: DiscountOffer

        public var buyCondition: String

        public enum CodingKeys: String, CodingKey {
            case itemCriteria = "item_criteria"

            case discountType = "discount_type"

            case offer

            case buyCondition = "buy_condition"
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteria, offer: DiscountOffer) {
            self.itemCriteria = itemCriteria

            self.discountType = discountType

            self.offer = offer

            self.buyCondition = buyCondition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemCriteria = try container.decode(ItemCriteria.self, forKey: .itemCriteria)

            discountType = try container.decode(String.self, forKey: .discountType)

            offer = try container.decode(DiscountOffer.self, forKey: .offer)

            buyCondition = try container.decode(String.self, forKey: .buyCondition)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)

            try? container.encodeIfPresent(discountType, forKey: .discountType)

            try? container.encodeIfPresent(offer, forKey: .offer)

            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)
        }
    }
}
