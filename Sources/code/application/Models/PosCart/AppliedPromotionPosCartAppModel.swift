

import Foundation
public extension ApplicationClient.PosCart {
    /*
         Model: AppliedPromotion
         Used By: PosCart
     */
    class AppliedPromotion: Codable {
        public var mrpPromotion: Bool?

        public var promotionName: String?

        public var buyRules: [BuyRules]?

        public var amount: Double?

        public var promotionOfferText: String?

        public var promotionGroup: String?

        public var ownership: Ownership?

        public var discountRules: [DiscountRulesApp]?

        public var promotionType: String?

        public var appliedFreeArticles: [AppliedFreeArticles]?

        public var articleQuantity: Int?

        public var promoId: String?

        public enum CodingKeys: String, CodingKey {
            case mrpPromotion = "mrp_promotion"

            case promotionName = "promotion_name"

            case buyRules = "buy_rules"

            case amount

            case promotionOfferText = "promotion_offer_text"

            case promotionGroup = "promotion_group"

            case ownership

            case discountRules = "discount_rules"

            case promotionType = "promotion_type"

            case appliedFreeArticles = "applied_free_articles"

            case articleQuantity = "article_quantity"

            case promoId = "promo_id"
        }

        public init(amount: Double? = nil, appliedFreeArticles: [AppliedFreeArticles]? = nil, articleQuantity: Int? = nil, buyRules: [BuyRules]? = nil, discountRules: [DiscountRulesApp]? = nil, mrpPromotion: Bool? = nil, ownership: Ownership? = nil, promotionGroup: String? = nil, promotionName: String? = nil, promotionOfferText: String? = nil, promotionType: String? = nil, promoId: String? = nil) {
            self.mrpPromotion = mrpPromotion

            self.promotionName = promotionName

            self.buyRules = buyRules

            self.amount = amount

            self.promotionOfferText = promotionOfferText

            self.promotionGroup = promotionGroup

            self.ownership = ownership

            self.discountRules = discountRules

            self.promotionType = promotionType

            self.appliedFreeArticles = appliedFreeArticles

            self.articleQuantity = articleQuantity

            self.promoId = promoId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionName = try container.decode(String.self, forKey: .promotionName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buyRules = try container.decode([BuyRules].self, forKey: .buyRules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amount = try container.decode(Double.self, forKey: .amount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionOfferText = try container.decode(String.self, forKey: .promotionOfferText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionGroup = try container.decode(String.self, forKey: .promotionGroup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ownership = try container.decode(Ownership.self, forKey: .ownership)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountRules = try container.decode([DiscountRulesApp].self, forKey: .discountRules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionType = try container.decode(String.self, forKey: .promotionType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appliedFreeArticles = try container.decode([AppliedFreeArticles].self, forKey: .appliedFreeArticles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promoId = try container.decode(String.self, forKey: .promoId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)

            try? container.encodeIfPresent(promotionName, forKey: .promotionName)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(promotionOfferText, forKey: .promotionOfferText)

            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(appliedFreeArticles, forKey: .appliedFreeArticles)

            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)

            try? container.encodeIfPresent(promoId, forKey: .promoId)
        }
    }
}
