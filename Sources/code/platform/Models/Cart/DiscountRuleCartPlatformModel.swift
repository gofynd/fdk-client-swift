

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: DiscountRule
        Used By: Cart
    */

    class DiscountRule: Codable {
        
        
        public var discountType: String
        
        public var buyCondition: String
        
        public var itemCriteria: ItemCriteria
        
        public var offer: DiscountOffer
        

        public enum CodingKeys: String, CodingKey {
            
            case discountType = "discount_type"
            
            case buyCondition = "buy_condition"
            
            case itemCriteria = "item_criteria"
            
            case offer = "offer"
            
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteria, offer: DiscountOffer) {
            
            self.discountType = discountType
            
            self.buyCondition = buyCondition
            
            self.itemCriteria = itemCriteria
            
            self.offer = offer
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                discountType = try container.decode(String.self, forKey: .discountType)
                
            
            
            
                buyCondition = try container.decode(String.self, forKey: .buyCondition)
                
            
            
            
                itemCriteria = try container.decode(ItemCriteria.self, forKey: .itemCriteria)
                
            
            
            
                offer = try container.decode(DiscountOffer.self, forKey: .offer)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discountType, forKey: .discountType)
            
            
            
            
            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)
            
            
            
            
            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
            
            
            
            
            try? container.encodeIfPresent(offer, forKey: .offer)
            
            
        }
        
    }
}


