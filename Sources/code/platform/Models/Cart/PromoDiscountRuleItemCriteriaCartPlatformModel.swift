

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PromoDiscountRuleItemCriteria
        Used By: Cart
    */

    class PromoDiscountRuleItemCriteria: Codable {
        
        
        public var itemId: [Double]?
        
        public var buyRules: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case buyRules = "buy_rules"
            
        }

        public init(buyRules: [String]? = nil, itemId: [Double]? = nil) {
            
            self.itemId = itemId
            
            self.buyRules = buyRules
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    itemId = try container.decode([Double].self, forKey: .itemId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buyRules = try container.decode([String].self, forKey: .buyRules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
        }
        
    }
}


