

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ChargesAmount
        Used By: Cart
    */
    class ChargesAmount: Codable {
        
        public var orderingCurrency: [String: Any]?
        
        public var baseCurrency: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingCurrency = "ordering_currency"
            
            case baseCurrency = "base_currency"
            
        }

        public init(baseCurrency: [String: Any]? = nil, orderingCurrency: [String: Any]? = nil) {
            
            self.orderingCurrency = orderingCurrency
            
            self.baseCurrency = baseCurrency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                orderingCurrency = try container.decode([String: Any].self, forKey: .orderingCurrency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                baseCurrency = try container.decode([String: Any].self, forKey: .baseCurrency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(orderingCurrency, forKey: .orderingCurrency)
            
            
            
            try? container.encodeIfPresent(baseCurrency, forKey: .baseCurrency)
            
            
        }
        
    }
}
