

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: DiscountOfferRule
        Used By: Cart
    */

    class DiscountOfferRule: Codable {
        
        
        public var discountType: String?
        
        public var offer: DiscountOffer?
        
        public var itemCriteria: DiscountItemCriteria?
        
        public var buyCondition: String?
        
        public var discountedPrice: Double?
        
        public var matchedBuyRules: [String]?
        
        public var meta: ItemSizeMapping?
        

        public enum CodingKeys: String, CodingKey {
            
            case discountType = "discount_type"
            
            case offer = "offer"
            
            case itemCriteria = "item_criteria"
            
            case buyCondition = "buy_condition"
            
            case discountedPrice = "discounted_price"
            
            case matchedBuyRules = "matched_buy_rules"
            
            case meta = "meta"
            
        }

        public init(buyCondition: String? = nil, discountedPrice: Double? = nil, discountType: String? = nil, itemCriteria: DiscountItemCriteria? = nil, matchedBuyRules: [String]? = nil, meta: ItemSizeMapping? = nil, offer: DiscountOffer? = nil) {
            
            self.discountType = discountType
            
            self.offer = offer
            
            self.itemCriteria = itemCriteria
            
            self.buyCondition = buyCondition
            
            self.discountedPrice = discountedPrice
            
            self.matchedBuyRules = matchedBuyRules
            
            self.meta = meta
            
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
                    offer = try container.decode(DiscountOffer.self, forKey: .offer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCriteria = try container.decode(DiscountItemCriteria.self, forKey: .itemCriteria)
                
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
                    discountedPrice = try container.decode(Double.self, forKey: .discountedPrice)
                
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
                
            
            
                do {
                    meta = try container.decode(ItemSizeMapping.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(discountType, forKey: .discountType)
            
            
            
            
            try? container.encodeIfPresent(offer, forKey: .offer)
            
            
            
            
            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
            
            
            
            
            try? container.encodeIfPresent(buyCondition, forKey: .buyCondition)
            
            
            
            
            try? container.encodeIfPresent(discountedPrice, forKey: .discountedPrice)
            
            
            
            
            try? container.encodeIfPresent(matchedBuyRules, forKey: .matchedBuyRules)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}


