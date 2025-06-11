

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: BuyRules
        Used By: Cart
    */

    class BuyRules: Codable {
        
        
        public var cartConditions: PromoBuyRuleCartConditions?
        
        public var itemCriteria: [String: Any]?
        
        public var allItems: Bool?
        
        public var mrpPromo: Bool?
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cartConditions = "cart_conditions"
            
            case itemCriteria = "item_criteria"
            
            case allItems = "all_items"
            
            case mrpPromo = "mrp_promo"
            
            case slug = "slug"
            
        }

        public init(allItems: Bool? = nil, cartConditions: PromoBuyRuleCartConditions? = nil, itemCriteria: [String: Any]? = nil, mrpPromo: Bool? = nil, slug: String? = nil) {
            
            self.cartConditions = cartConditions
            
            self.itemCriteria = itemCriteria
            
            self.allItems = allItems
            
            self.mrpPromo = mrpPromo
            
            self.slug = slug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cartConditions = try container.decode(PromoBuyRuleCartConditions.self, forKey: .cartConditions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemCriteria = try container.decode([String: Any].self, forKey: .itemCriteria)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allItems = try container.decode(Bool.self, forKey: .allItems)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mrpPromo = try container.decode(Bool.self, forKey: .mrpPromo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartConditions, forKey: .cartConditions)
            
            
            
            
            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
            
            
            
            
            try? container.encodeIfPresent(allItems, forKey: .allItems)
            
            
            
            
            try? container.encodeIfPresent(mrpPromo, forKey: .mrpPromo)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
}


