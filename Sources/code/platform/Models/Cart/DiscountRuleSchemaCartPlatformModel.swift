

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: DiscountRuleSchema
         Used By: Cart
     */

    class DiscountRuleSchema: Codable {
        public var discountType: String

        public var itemCriteria: ItemCriteriaSchema

        public var buyCondition: String

        public var offer: DiscountOfferSchema

        public enum CodingKeys: String, CodingKey {
            case discountType = "discount_type"

            case itemCriteria = "item_criteria"

            case buyCondition = "buy_condition"

            case offer
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteriaSchema, offer: DiscountOfferSchema) {
            self.discountType = discountType

            self.itemCriteria = itemCriteria

            self.buyCondition = buyCondition

            self.offer = offer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discountType = try container.decode(String.self, forKey: .discountType)

            itemCriteria = try container.decode(ItemCriteriaSchema.self, forKey: .itemCriteria)

            buyCondition = try container.decode(String.self, forKey: .buyCondition)

            offer = try container.decode(DiscountOfferSchema.self, forKey: .offer)
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
