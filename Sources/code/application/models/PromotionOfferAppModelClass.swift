

import Foundation
public extension ApplicationClient {
    /*
         Model: PromotionOffer
         Used By: Cart
     */
    class PromotionOffer: Codable {
        public var validTill: String?

        public var freeGiftItems: [FreeGiftItems]?

        public var offerText: String?

        public var discountRules: [[String: Any]]?

        public var promotionGroup: String?

        public var id: String?

        public var description: String?

        public var buyRules: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case validTill = "valid_till"

            case freeGiftItems = "free_gift_items"

            case offerText = "offer_text"

            case discountRules = "discount_rules"

            case promotionGroup = "promotion_group"

            case id

            case description

            case buyRules = "buy_rules"
        }

        public init(buyRules: [String: Any]? = nil, description: String? = nil, discountRules: [[String: Any]]? = nil, freeGiftItems: [FreeGiftItems]? = nil, id: String? = nil, offerText: String? = nil, promotionGroup: String? = nil, validTill: String? = nil) {
            self.validTill = validTill

            self.freeGiftItems = freeGiftItems

            self.offerText = offerText

            self.discountRules = discountRules

            self.promotionGroup = promotionGroup

            self.id = id

            self.description = description

            self.buyRules = buyRules
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                validTill = try container.decode(String.self, forKey: .validTill)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                freeGiftItems = try container.decode([FreeGiftItems].self, forKey: .freeGiftItems)

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
                discountRules = try container.decode([[String: Any]].self, forKey: .discountRules)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buyRules = try container.decode([String: Any].self, forKey: .buyRules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(validTill, forKey: .validTill)

            try? container.encodeIfPresent(freeGiftItems, forKey: .freeGiftItems)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
        }
    }
}
