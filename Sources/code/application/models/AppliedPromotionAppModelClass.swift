import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: AppliedPromotion
         Used By: Cart
     */
    class AppliedPromotion: Codable {
        public var amount: Double?

        public var promoId: String?

        public var articleQuantity: Int?

        public var mrpPromotion: Bool?

        public var promotionType: String?

        public enum CodingKeys: String, CodingKey {
            case amount

            case promoId = "promo_id"

            case articleQuantity = "article_quantity"

            case mrpPromotion = "mrp_promotion"

            case promotionType = "promotion_type"
        }

        public init(amount: Double? = nil, articleQuantity: Int? = nil, mrpPromotion: Bool? = nil, promotionType: String? = nil, promoId: String? = nil) {
            self.amount = amount

            self.promoId = promoId

            self.articleQuantity = articleQuantity

            self.mrpPromotion = mrpPromotion

            self.promotionType = promotionType
        }

        public func duplicate() -> AppliedPromotion {
            let dict = self.dictionary!
            let copy = AppliedPromotion(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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
                articleQuantity = try container.decode(Int.self, forKey: .articleQuantity)

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
                promotionType = try container.decode(String.self, forKey: .promotionType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(promoId, forKey: .promoId)

            try? container.encodeIfPresent(articleQuantity, forKey: .articleQuantity)

            try? container.encodeIfPresent(mrpPromotion, forKey: .mrpPromotion)

            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
        }
    }
}
