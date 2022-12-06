

import Foundation
public extension PlatformClient {
    /*
         Model: AppliedPromotion
         Used By: Cart
     */

    class AppliedPromotion: Codable {
        public var mrpPromotion: Bool?

        public var promotionType: String?

        public var articleQuantity: Int?

        public var amount: Double?

        public var promoId: String?

        public var offerText: String?

        public enum CodingKeys: String, CodingKey {
            case mrpPromotion = "mrp_promotion"

            case promotionType = "promotion_type"

            case articleQuantity = "article_quantity"

            case amount

            case promoId = "promo_id"

            case offerText = "offer_text"
        }

        public init(amount: Double? = nil, articleQuantity: Int? = nil, mrpPromotion: Bool? = nil, offerText: String? = nil, promotionType: String? = nil, promoId: String? = nil) {
            self.mrpPromotion = mrpPromotion

            self.promotionType = promotionType

            self.articleQuantity = articleQuantity

            self.amount = amount

            self.promoId = promoId

            self.offerText = offerText
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
                promotionType = try container.decode(String.self, forKey: .promotionType)

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
                amount = try container.decode(Double.self, forKey: .amount)

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
                offerText = try container.decode(String.self, forKey: .offerText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)

            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(promoId, forKey: .promoId)

            try? container.encodeIfPresent(offerText, forKey: .offerText)
        }
    }
}
