

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: BuyRules
        Used By: Cart
    */
    class BuyRules: Codable {
        
        public var itemCriteria: [String: Any]?
        
        public var cartConditions: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemCriteria = "item_criteria"
            
            case cartConditions = "cart_conditions"
            
        }

        public init(cartConditions: [String: Any]? = nil, itemCriteria: [String: Any]? = nil) {
            
            self.itemCriteria = itemCriteria
            
            self.cartConditions = cartConditions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                itemCriteria = try container.decode([String: Any].self, forKey: .itemCriteria)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cartConditions = try container.decode([String: Any].self, forKey: .cartConditions)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(itemCriteria, forKey: .itemCriteria)
            
            
            
            try? container.encodeIfPresent(cartConditions, forKey: .cartConditions)
            
            
        }
        
    }
}
