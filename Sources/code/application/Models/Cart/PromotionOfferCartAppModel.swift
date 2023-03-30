

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: PromotionOffer
         Used By: Cart
     */
    class PromotionOffer: Codable {
        public var validTill: String?

        public var id: String?

        public var offerText: String?

        public var description: String?

        public var promotionGroup: String?

        public enum CodingKeys: String, CodingKey {
            case validTill = "valid_till"

            case id

            case offerText = "offer_text"

            case description

            case promotionGroup = "promotion_group"
        }

        public init(description: String? = nil, id: String? = nil, offerText: String? = nil, promotionGroup: String? = nil, validTill: String? = nil) {
            self.validTill = validTill

            self.id = id

            self.offerText = offerText

            self.description = description

            self.promotionGroup = promotionGroup
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
                id = try container.decode(String.self, forKey: .id)

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
                description = try container.decode(String.self, forKey: .description)

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

            try? container.encodeIfPresent(validTill, forKey: .validTill)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)
        }
    }
}
