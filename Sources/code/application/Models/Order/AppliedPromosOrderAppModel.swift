

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: AppliedPromos
         Used By: Order
     */
    class AppliedPromos: Codable {
        public var mrpPromotion: Bool?

        public var promotionName: String?

        public var articleQuantity: Double?

        public var promoId: String?

        public var amount: Double?

        public var promotionType: String?

        public var appliedFreeArticles: [AppliedFreeArticles]?

        public enum CodingKeys: String, CodingKey {
            case mrpPromotion = "mrp_promotion"

            case promotionName = "promotion_name"

            case articleQuantity = "article_quantity"

            case promoId = "promo_id"

            case amount

            case promotionType = "promotion_type"

            case appliedFreeArticles = "applied_free_articles"
        }

        public init(amount: Double? = nil, appliedFreeArticles: [AppliedFreeArticles]? = nil, articleQuantity: Double? = nil, mrpPromotion: Bool? = nil, promotionName: String? = nil, promotionType: String? = nil, promoId: String? = nil) {
            self.mrpPromotion = mrpPromotion

            self.promotionName = promotionName

            self.articleQuantity = articleQuantity

            self.promoId = promoId

            self.amount = amount

            self.promotionType = promotionType

            self.appliedFreeArticles = appliedFreeArticles
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
                articleQuantity = try container.decode(Double.self, forKey: .articleQuantity)

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

            do {
                appliedFreeArticles = try container.decode([AppliedFreeArticles].self, forKey: .appliedFreeArticles)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)

            try? container.encodeIfPresent(promotionName, forKey: .promotionName)

            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)

            try? container.encodeIfPresent(promoId, forKey: .promoId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(appliedFreeArticles, forKey: .appliedFreeArticles)
        }
    }
}
