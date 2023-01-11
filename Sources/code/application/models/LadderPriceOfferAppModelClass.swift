

import Foundation
public extension ApplicationClient {
    /*
         Model: LadderPriceOffer
         Used By: Cart
     */
    class LadderPriceOffer: Codable {
        public var promotionGroup: String?

        public var discountRules: [[String: Any]]?

        public var buyRules: [String: Any]?

        public var offerPrices: [LadderOfferItem]?

        public var description: String?

        public var id: String?

        public var validTill: String?

        public var calculateOn: String?

        public var offerText: String?

        public var freeGiftItems: [FreeGiftItems]?

        public enum CodingKeys: String, CodingKey {
            case promotionGroup = "promotion_group"

            case discountRules = "discount_rules"

            case buyRules = "buy_rules"

            case offerPrices = "offer_prices"

            case description

            case id

            case validTill = "valid_till"

            case calculateOn = "calculate_on"

            case offerText = "offer_text"

            case freeGiftItems = "free_gift_items"
        }

        public init(buyRules: [String: Any]? = nil, calculateOn: String? = nil, description: String? = nil, discountRules: [[String: Any]]? = nil, freeGiftItems: [FreeGiftItems]? = nil, id: String? = nil, offerPrices: [LadderOfferItem]? = nil, offerText: String? = nil, promotionGroup: String? = nil, validTill: String? = nil) {
            self.promotionGroup = promotionGroup

            self.discountRules = discountRules

            self.buyRules = buyRules

            self.offerPrices = offerPrices

            self.description = description

            self.id = id

            self.validTill = validTill

            self.calculateOn = calculateOn

            self.offerText = offerText

            self.freeGiftItems = freeGiftItems
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                promotionGroup = try container.decode(String.self, forKey: .promotionGroup)

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
                buyRules = try container.decode([String: Any].self, forKey: .buyRules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                offerPrices = try container.decode([LadderOfferItem].self, forKey: .offerPrices)

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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                validTill = try container.decode(String.self, forKey: .validTill)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                calculateOn = try container.decode(String.self, forKey: .calculateOn)

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
                freeGiftItems = try container.decode([FreeGiftItems].self, forKey: .freeGiftItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)

            try? container.encodeIfPresent(discountRules, forKey: .discountRules)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(offerPrices, forKey: .offerPrices)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(validTill, forKey: .validTill)

            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(freeGiftItems, forKey: .freeGiftItems)
        }
    }
}
