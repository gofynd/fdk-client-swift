

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: DiscountRulesApp
        Used By: Cart
    */
    class DiscountRulesApp: Codable {
        
        public var offer: PromoDiscountRuleOffer?
        
        public var rawOffer: PromoDiscountRuleRawOffer?
        
        public var itemCriteria: PromoDiscountRuleItemCriteria?
        
        public var matchedBuyRules: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case offer = "offer"
            
            case rawOffer = "raw_offer"
            
            case itemCriteria = "item_criteria"
            
            case matchedBuyRules = "matched_buy_rules"
            
        }

        public init(itemCriteria: PromoDiscountRuleItemCriteria? = nil, matchedBuyRules: [String]? = nil, offer: PromoDiscountRuleOffer? = nil, rawOffer: PromoDiscountRuleRawOffer? = nil) {
            
            self.offer = offer
            
            self.rawOffer = rawOffer
            
            self.itemCriteria = itemCriteria
            
            self.matchedBuyRules = matchedBuyRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                offer = try container.decode(PromoDiscountRuleOffer.self, forKey: .offer)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                rawOffer = try container.decode(PromoDiscountRuleRawOffer.self, forKey: .rawOffer)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemCriteria = try container.decode(PromoDiscountRuleItemCriteria.self, forKey: .itemCriteria)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                matchedBuyRules = try container.decode([String].self, forKey: .matchedBuyRules)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(offer, forKey: .offer)
            
            
            
            try? container.encodeIfPresent(rawOffer, forKey: .rawOffer)
            
            
            
            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
            
            
            
            try? container.encodeIfPresent(matchedBuyRules, forKey: .matchedBuyRules)
            
            
        }
        
    }
}
