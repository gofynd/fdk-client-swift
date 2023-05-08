

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: DiscountRuleSchema
         Used By: Cart
     */

    class DiscountRuleSchema: Codable {
        public var buyCondition: String

        public var discountType: String

        public var offer: DiscountOfferSchema

        public var itemCriteria: ItemCriteriaSchema

        public enum CodingKeys: String, CodingKey {
            case buyCondition = "buy_condition"

            case discountType = "discount_type"

            case offer

            case itemCriteria = "item_criteria"
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteriaSchema, offer: DiscountOfferSchema) {
            self.buyCondition = buyCondition

            self.discountType = discountType

            self.offer = offer

            self.itemCriteria = itemCriteria
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            buyCondition = try container.decode(String.self, forKey: .buyCondition)

            discountType = try container.decode(String.self, forKey: .discountType)

            offer = try container.decode(DiscountOfferSchema.self, forKey: .offer)

            itemCriteria = try container.decode(ItemCriteriaSchema.self, forKey: .itemCriteria)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)

            try? container.encodeIfPresent(discountType, forKey: .discountType)

            try? container.encodeIfPresent(offer, forKey: .offer)

            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
        }
    }
}