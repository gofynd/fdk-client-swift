

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromoDiscountRuleRawOffer
        Used By: Cart
    */

    class PromoDiscountRuleRawOffer: Codable {
        
        
        public var buyCondition: String?
        
        public var discountType: String?
        
        public var offer: PromoDiscountRuleOffer?
        
        public var itemCriteria: PromoDiscountRuleItemCriteria?
        

        public enum CodingKeys: String, CodingKey {
            
            case buyCondition = "buy_condition"
            
            case discountType = "discount_type"
            
            case offer = "offer"
            
            case itemCriteria = "item_criteria"
            
        }

        public init(buyCondition: String? = nil, discountType: String? = nil, itemCriteria: PromoDiscountRuleItemCriteria? = nil, offer: PromoDiscountRuleOffer? = nil) {
            
            self.buyCondition = buyCondition
            
            self.discountType = discountType
            
            self.offer = offer
            
            self.itemCriteria = itemCriteria
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    buyCondition = try container.decode(String.self, forKey: .buyCondition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    discountType = try container.decode(String.self, forKey: .discountType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    offer = try container.decode(PromoDiscountRuleOffer.self, forKey: .offer)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)
            
            
            
            
            try? container.encodeIfPresent(discountType, forKey: .discountType)
            
            
            
            
            try? container.encodeIfPresent(offer, forKey: .offer)
            
            
            
            
            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
            
            
        }
        
    }
}


