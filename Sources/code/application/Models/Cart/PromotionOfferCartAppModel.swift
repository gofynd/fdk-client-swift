

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: PromotionOffer
        Used By: Cart
    */
    class PromotionOffer: Codable {
        
        public var id: String?
        
        public var buyRules: [String: Any]?
        
        public var offerText: String?
        
        public var promotionGroup: String?
        
        public var validTill: String?
        
        public var discountRules: [[String: Any]]?
        
        public var freeGiftItems: [FreeGiftItems]?
        
        public var description: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case buyRules = "buy_rules"
            
            case offerText = "offer_text"
            
            case promotionGroup = "promotion_group"
            
            case validTill = "valid_till"
            
            case discountRules = "discount_rules"
            
            case freeGiftItems = "free_gift_items"
            
            case description = "description"
            
        }

        public init(buyRules: [String: Any]? = nil, description: String? = nil, discountRules: [[String: Any]]? = nil, freeGiftItems: [FreeGiftItems]? = nil, id: String? = nil, offerText: String? = nil, promotionGroup: String? = nil, validTill: String? = nil) {
            
            self.id = id
            
            self.buyRules = buyRules
            
            self.offerText = offerText
            
            self.promotionGroup = promotionGroup
            
            self.validTill = validTill
            
            self.discountRules = discountRules
            
            self.freeGiftItems = freeGiftItems
            
            self.description = description
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(String.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                buyRules = try container.decode([String: Any].self, forKey: .buyRules)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                offerText = try container.decode(String.self, forKey: .offerText)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                promotionGroup = try container.decode(String.self, forKey: .promotionGroup)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                validTill = try container.decode(String.self, forKey: .validTill)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                discountRules = try container.decode([[String: Any]].self, forKey: .discountRules)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                freeGiftItems = try container.decode([FreeGiftItems].self, forKey: .freeGiftItems)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                description = try container.decode(String.self, forKey: .description)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(offerText, forKey: .offerText)
            
            
            
            
            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)
            
            
            
            
            try? container.encodeIfPresent(validTill, forKey: .validTill)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(freeGiftItems, forKey: .freeGiftItems)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
        }
        
    }
}
