

import Foundation
public extension ApplicationClient {
    /*
         Model: LadderPriceOffer
         Used By: Cart
     */
    class LadderPriceOffer: Codable {
        public var description: String?

        public var validTill: String?

        public var offerText: String?

        public var offerPrices: [LadderOfferItem]?

        public var id: String?

        public var promotionGroup: String?

        public enum CodingKeys: String, CodingKey {
            case description

            case validTill = "valid_till"

            case offerText = "offer_text"

            case offerPrices = "offer_prices"

            case id

            case promotionGroup = "promotion_group"
        }

        public init(description: String? = nil, id: String? = nil, offerPrices: [LadderOfferItem]? = nil, offerText: String? = nil, promotionGroup: String? = nil, validTill: String? = nil) {
            self.description = description

            self.validTill = validTill

            self.offerText = offerText

            self.offerPrices = offerPrices

            self.id = id

            self.promotionGroup = promotionGroup
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

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
                offerText = try container.decode(String.self, forKey: .offerText)

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
                id = try container.decode(String.self, forKey: .id)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(validTill, forKey: .validTill)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(offerPrices, forKey: .offerPrices)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)
        }
    }
}
