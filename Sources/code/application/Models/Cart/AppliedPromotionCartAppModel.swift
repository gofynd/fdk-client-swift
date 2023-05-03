

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: AppliedPromotion
         Used By: Cart
     */
    class AppliedPromotion: Codable {
        public var promoId: String?

        public var promotionType: String?

        public var mrpPromotion: Bool?

        public var offerText: String?

        public var ownership: Ownership?

        public var amount: Double?

        public var articleQuantity: Int?

        public enum CodingKeys: String, CodingKey {
            case promoId = "promo_id"

            case promotionType = "promotion_type"

            case mrpPromotion = "mrp_promotion"

            case offerText = "offer_text"

            case ownership

            case amount

            case articleQuantity = "article_quantity"
        }

        public init(amount: Double? = nil, articleQuantity: Int? = nil, mrpPromotion: Bool? = nil, offerText: String? = nil, ownership: Ownership? = nil, promotionType: String? = nil, promoId: String? = nil) {
            self.promoId = promoId

            self.promotionType = promotionType

            self.mrpPromotion = mrpPromotion

            self.offerText = offerText

            self.ownership = ownership

            self.amount = amount

            self.articleQuantity = articleQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                promoId = try container.decode(String.self, forKey: .promoId)

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
                mrpPromotion = try container.decode(Bool.self, forKey: .mrpPromotion)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                offerText = try container.decode(String.self, forKey: .offerText)

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
                amount = try container.decode(Double.self, forKey: .amount)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promoId, forKey: .promoId)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(ownership, forKey: .ownership)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)
        }
    }
}
