

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ConversionRate
        Used By: Order
    */
    class ConversionRate: Codable {
        
        public var base: String?
        
        public var rates: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case base = "base"
            
            case rates = "rates"
            
        }

        public init(base: String? = nil, rates: [String: Any]? = nil) {
            
            self.base = base
            
            self.rates = rates
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                base = try container.decode(String.self, forKey: .base)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                rates = try container.decode([String: Any].self, forKey: .rates)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
            
            try? container.encodeIfPresent(rates, forKey: .rates)
            
            
        }
        
    }
}
