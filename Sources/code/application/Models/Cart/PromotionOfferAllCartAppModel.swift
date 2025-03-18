

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: PromotionOfferAll
        Used By: Cart
    */
    class PromotionOfferAll: Codable {
        
        public var id: String?
        
        public var buyRules: [String: Any]?
        
        public var offerText: String?
        
        public var promotionType: String?
        
        public var promotionName: String?
        
        public var promotionGroup: String?
        
        public var validTill: String?
        
        public var discountRules: [[String: Any]]?
        
        public var freeGiftItems: [FreeGiftItems]?
        
        public var description: String?
        
        public var isBankOffer: Bool?
        
        public var isApplicable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case buyRules = "buy_rules"
            
            case offerText = "offer_text"
            
            case promotionType = "promotion_type"
            
            case promotionName = "promotion_name"
            
            case promotionGroup = "promotion_group"
            
            case validTill = "valid_till"
            
            case discountRules = "discount_rules"
            
            case freeGiftItems = "free_gift_items"
            
            case description = "description"
            
            case isBankOffer = "is_bank_offer"
            
            case isApplicable = "is_applicable"
            
        }

        public init(buyRules: [String: Any]? = nil, description: String? = nil, discountRules: [[String: Any]]? = nil, freeGiftItems: [FreeGiftItems]? = nil, id: String? = nil, isApplicable: Bool? = nil, isBankOffer: Bool? = nil, offerText: String? = nil, promotionGroup: String? = nil, promotionName: String? = nil, promotionType: String? = nil, validTill: String? = nil) {
            
            self.id = id
            
            self.buyRules = buyRules
            
            self.offerText = offerText
            
            self.promotionType = promotionType
            
            self.promotionName = promotionName
            
            self.promotionGroup = promotionGroup
            
            self.validTill = validTill
            
            self.discountRules = discountRules
            
            self.freeGiftItems = freeGiftItems
            
            self.description = description
            
            self.isBankOffer = isBankOffer
            
            self.isApplicable = isApplicable
            
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
                promotionType = try container.decode(String.self, forKey: .promotionType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                promotionName = try container.decode(String.self, forKey: .promotionName)
            
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
            
            
            
            do {
                isBankOffer = try container.decode(Bool.self, forKey: .isBankOffer)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isApplicable = try container.decode(Bool.self, forKey: .isApplicable)
            
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
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            try? container.encodeIfPresent(promotionName, forKey: .promotionName)
            
            
            
            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)
            
            
            
            try? container.encodeIfPresent(validTill, forKey: .validTill)
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            try? container.encodeIfPresent(freeGiftItems, forKey: .freeGiftItems)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(isBankOffer, forKey: .isBankOffer)
            
            
            
            try? container.encodeIfPresent(isApplicable, forKey: .isApplicable)
            
            
        }
        
    }
}
