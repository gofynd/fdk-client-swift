

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromotionPaymentOffer
        Used By: Cart
    */

    class PromotionPaymentOffer: Codable {
        
        
        public var applicationId: String?
        
        public var buyRules: [[String: Any]]?
        
        public var calculateOn: String?
        
        public var description: String?
        
        public var discountRules: [[String: Any]]?
        
        public var id: String?
        
        public var offerText: String?
        
        public var promotionGroup: String?
        
        public var promotionType: String?
        
        public var promotionName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case buyRules = "buy_rules"
            
            case calculateOn = "calculate_on"
            
            case description = "description"
            
            case discountRules = "discount_rules"
            
            case id = "id"
            
            case offerText = "offer_text"
            
            case promotionGroup = "promotion_group"
            
            case promotionType = "promotion_type"
            
            case promotionName = "promotion_name"
            
        }

        public init(applicationId: String? = nil, buyRules: [[String: Any]]? = nil, calculateOn: String? = nil, description: String? = nil, discountRules: [[String: Any]]? = nil, id: String? = nil, offerText: String? = nil, promotionGroup: String? = nil, promotionName: String? = nil, promotionType: String? = nil) {
            
            self.applicationId = applicationId
            
            self.buyRules = buyRules
            
            self.calculateOn = calculateOn
            
            self.description = description
            
            self.discountRules = discountRules
            
            self.id = id
            
            self.offerText = offerText
            
            self.promotionGroup = promotionGroup
            
            self.promotionType = promotionType
            
            self.promotionName = promotionName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyRules = try container.decode([[String: Any]].self, forKey: .buyRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    calculateOn = try container.decode(String.self, forKey: .calculateOn)
                
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
                    discountRules = try container.decode([[String: Any]].self, forKey: .discountRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            
            try? container.encodeIfPresent(calculateOn, forKey: .calculateOn)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(discountRules, forKey: .discountRules)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(offerText, forKey: .offerText)
            
            
            
            
            try? container.encodeIfPresent(promotionGroup, forKey: .promotionGroup)
            
            
            
            
            try? container.encodeIfPresent(promotionType, forKey: .promotionType)
            
            
            
            
            try? container.encodeIfPresent(promotionName, forKey: .promotionName)
            
            
        }
        
    }
}


