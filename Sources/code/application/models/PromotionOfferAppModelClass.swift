

import Foundation
public extension ApplicationClient {
    /*
         Model: PromotionOffer
         Used By: Cart
     */
    class PromotionOffer: Codable {
        public var promotionGroup: String?

        public var offerText: String?

        public var validTill: String?

        public var description: String?

        public var id: String?

        public enum CodingKeys: String, CodingKey {
            case promotionGroup = "promotion_group"

            case offerText = "offer_text"

            case validTill = "valid_till"

            case description

            case id
        }

        public init(description: String? = nil, id: String? = nil, offerText: String? = nil, promotionGroup: String? = nil, validTill: String? = nil) {
            self.promotionGroup = promotionGroup

            self.offerText = offerText

            self.validTill = validTill

            self.description = description

            self.id = id
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
                offerText = try container.decode(String.self, forKey: .offerText)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)

            try? container.encodeIfPresent(offerText, forKey: .offerText)

            try? container.encodeIfPresent(validTill, forKey: .validTill)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
