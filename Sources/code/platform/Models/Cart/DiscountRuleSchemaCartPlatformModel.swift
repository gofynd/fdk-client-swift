

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: DiscountRuleSchema
         Used By: Cart
     */

    class DiscountRuleSchema: Codable {
        public var discountType: String

        public var offer: DiscountOfferSchema

        public var itemCriteria: ItemCriteriaSchema

        public var buyCondition: String

        public enum CodingKeys: String, CodingKey {
            case discountType = "discount_type"

            case offer

            case itemCriteria = "item_criteria"

            case buyCondition = "buy_condition"
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteriaSchema, offer: DiscountOfferSchema) {
            self.discountType = discountType

            self.offer = offer

            self.itemCriteria = itemCriteria

            self.buyCondition = buyCondition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discountType = try container.decode(String.self, forKey: .discountType)

            offer = try container.decode(DiscountOfferSchema.self, forKey: .offer)

            itemCriteria = try container.decode(ItemCriteriaSchema.self, forKey: .itemCriteria)

            buyCondition = try container.decode(String.self, forKey: .buyCondition)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discountType, forKey: .discountType)

            try? container.encodeIfPresent(offer, forKey: .offer)

            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)

            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)
        }
    }
}
