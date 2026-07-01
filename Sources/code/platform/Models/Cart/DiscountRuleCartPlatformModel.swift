

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
        
        public var meta: ItemSizeMapping?
        
        public var offer: DiscountOffer
        

        public enum CodingKeys: String, CodingKey {
            
            case discountType = "discount_type"
            
            case buyCondition = "buy_condition"
            
            case itemCriteria = "item_criteria"
            
            case meta = "meta"
            
            case offer = "offer"
            
        }

        public init(buyCondition: String, discountType: String, itemCriteria: ItemCriteria, meta: ItemSizeMapping? = nil, offer: DiscountOffer) {
            
            self.discountType = discountType
            
            self.buyCondition = buyCondition
            
            self.itemCriteria = itemCriteria
            
            self.meta = meta
            
            self.offer = offer
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                discountType = try container.decode(String.self, forKey: .discountType)
                
            
            
            
                buyCondition = try container.decode(String.self, forKey: .buyCondition)
                
            
            
            
                itemCriteria = try container.decode(ItemCriteria.self, forKey: .itemCriteria)
                
            
            
            
                do {
                    meta = try container.decode(ItemSizeMapping.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                offer = try container.decode(DiscountOffer.self, forKey: .offer)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discountType, forKey: .discountType)
            
            
            
            
            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)
            
            
            
            
            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(offer, forKey: .offer)
            
            
        }
        
    }
}


