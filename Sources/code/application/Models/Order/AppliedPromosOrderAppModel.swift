

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: AppliedPromos
         Used By: Order
     */
    class AppliedPromos: Codable {
        public var articleQuantity: Double?

        public var promotionName: String?

        public var mrpPromotion: Bool?

        public var promoId: String?

        public var appliedFreeArticles: [AppliedFreeArticles]?

        public var amount: Double?

        public var promotionType: String?

        public enum CodingKeys: String, CodingKey {
            case articleQuantity = "article_quantity"

            case promotionName = "promotion_name"

            case mrpPromotion = "mrp_promotion"

            case promoId = "promo_id"

            case appliedFreeArticles = "applied_free_articles"

            case amount

            case promotionType = "promotion_type"
        }

        public init(amount: Double? = nil, appliedFreeArticles: [AppliedFreeArticles]? = nil, articleQuantity: Double? = nil, mrpPromotion: Bool? = nil, promotionName: String? = nil, promotionType: String? = nil, promoId: String? = nil) {
            self.articleQuantity = articleQuantity

            self.promotionName = promotionName

            self.mrpPromotion = mrpPromotion

            self.promoId = promoId

            self.appliedFreeArticles = appliedFreeArticles

            self.amount = amount

            self.promotionType = promotionType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                articleQuantity = try container.decode(Double.self, forKey: .articleQuantity)

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
                promoId = try container.decode(String.self, forKey: .promoId)

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
                amount = try container.decode(Double.self, forKey: .amount)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)

            try? container.encodeIfPresent(promotionName, forKey: .promotionName)

            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)

            try? container.encodeIfPresent(promoId, forKey: .promoId)

            try? container.encodeIfPresent(appliedFreeArticles, forKey: .appliedFreeArticles)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
        }
    }
}
