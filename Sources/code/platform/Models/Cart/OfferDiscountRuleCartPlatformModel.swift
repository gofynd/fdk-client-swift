

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OfferDiscountRule
        Used By: Cart
    */

    class OfferDiscountRule: Codable {
        
        
        public var discountType: String?
        
        public var buyCondition: String?
        
        public var itemCriteria: OfferItemCriteria?
        
        public var offer: DiscountRuleOffer?
        
        public var isExact: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case discountType = "discount_type"
            
            case buyCondition = "buy_condition"
            
            case itemCriteria = "item_criteria"
            
            case offer = "offer"
            
            case isExact = "is_exact"
            
        }

        public init(buyCondition: String? = nil, discountType: String? = nil, isExact: Bool? = nil, itemCriteria: OfferItemCriteria? = nil, offer: DiscountRuleOffer? = nil) {
            
            self.discountType = discountType
            
            self.buyCondition = buyCondition
            
            self.itemCriteria = itemCriteria
            
            self.offer = offer
            
            self.isExact = isExact
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    discountType = try container.decode(String.self, forKey: .discountType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyCondition = try container.decode(String.self, forKey: .buyCondition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCriteria = try container.decode(OfferItemCriteria.self, forKey: .itemCriteria)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offer = try container.decode(DiscountRuleOffer.self, forKey: .offer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isExact = try container.decode(Bool.self, forKey: .isExact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discountType, forKey: .discountType)
            
            
            
            
            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)
            
            
            
            
            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
            
            
            
            
            try? container.encodeIfPresent(offer, forKey: .offer)
            
            
            
            
            try? container.encodeIfPresent(isExact, forKey: .isExact)
            
            
        }
        
    }
}


