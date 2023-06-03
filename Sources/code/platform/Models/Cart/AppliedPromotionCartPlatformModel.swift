

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: AppliedPromotion
         Used By: Cart
     */

    class AppliedPromotion: Codable {
        public var offerText: String?

        public var amount: Double?

        public var ownership: Ownership2?

        public var buyRules: [BuyRules]?

        public var appliedFreeArticles: [AppliedFreeArticles]?

        public var promotionType: String?

        public var promotionGroup: String?

        public var articleQuantity: Int?

        public var promotionName: String?

        public var mrpPromotion: Bool?

        public var discountRules: [DiscountRulesApp]?

        public var promoId: String?

        public enum CodingKeys: String, CodingKey {
            case offerText = "offer_text"

            case amount

            case ownership

            case buyRules = "buy_rules"

            case appliedFreeArticles = "applied_free_articles"

            case promotionType = "promotion_type"

            case promotionGroup = "promotion_group"

            case articleQuantity = "article_quantity"

            case promotionName = "promotion_name"

            case mrpPromotion = "mrp_promotion"

            case discountRules = "discount_rules"

            case promoId = "promo_id"
        }

        public init(amount: Double? = nil, appliedFreeArticles: [AppliedFreeArticles]? = nil, articleQuantity: Int? = nil, buyRules: [BuyRules]? = nil, discountRules: [DiscountRulesApp]? = nil, mrpPromotion: Bool? = nil, offerText: String? = nil, ownership: Ownership2? = nil, promotionGroup: String? = nil, promotionName: String? = nil, promotionType: String? = nil, promoId: String? = nil) {
            self.offerText = offerText

            self.amount = amount

            self.ownership = ownership

            self.buyRules = buyRules

            self.appliedFreeArticles = appliedFreeArticles

            self.promotionType = promotionType

            self.promotionGroup = promotionGroup

            self.articleQuantity = articleQuantity

            self.promotionName = promotionName

            self.mrpPromotion = mrpPromotion

            self.discountRules = discountRules

            self.promoId = promoId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                offerText = try container.decode(String.self, forKey: .offerText)

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
                ownership = try container.decode(Ownership2.self, forKey: .ownership)

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
                appliedFreeArticles = try container.decode([AppliedFreeArticles].self, forKey: .appliedFreeArticles)

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
                promotionGroup = try container.decode(String.self, forKey: .promotionGroup)

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
                promotionName = try container.decode(String.self, forKey: .promotionName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)

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
                promoId = try container.decode(String.self, forKey: .promoId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(appliedFreeArticles, forKey: .appliedFreeArticles)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)

            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)

            try? container.encodeIfPresent(promotionName, forKey: .promotionName)

            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(promoId, forKey: .promoId)
        }
    }
}
