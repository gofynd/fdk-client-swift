

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: DiscountRulesApp
         Used By: Cart
     */
    class DiscountRulesApp: Codable {
        public var matchedBuyRules: [String]?

        public var offer: [String: Any]?

        public var rawOffer: [String: Any]?

        public var itemCriteria: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case matchedBuyRules = "matched_buy_rules"

            case offer

            case rawOffer = "raw_offer"

            case itemCriteria = "item_criteria"
        }

        public init(itemCriteria: [String: Any]? = nil, matchedBuyRules: [String]? = nil, offer: [String: Any]? = nil, rawOffer: [String: Any]? = nil) {
            self.matchedBuyRules = matchedBuyRules

            self.offer = offer

            self.rawOffer = rawOffer

            self.itemCriteria = itemCriteria
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                matchedBuyRules = try container.decode([String].self, forKey: .matchedBuyRules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                offer = try container.decode([String: Any].self, forKey: .offer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rawOffer = try container.decode([String: Any].self, forKey: .rawOffer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCriteria = try container.decode([String: Any].self, forKey: .itemCriteria)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(matchedBuyRules, forKey: .matchedBuyRules)

            try? container.encodeIfPresent(offer, forKey: .offer)

            try? container.encodeIfPresent(rawOffer, forKey: .rawOffer)

            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
        }
    }
}
