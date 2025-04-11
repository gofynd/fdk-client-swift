

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartItemMOQ
        Used By: Cart
    */
    class CartItemMOQ: Codable {
        
        public var incrementUnit: Double?
        
        public var maximum: Double?
        
        public var minimum: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case incrementUnit = "increment_unit"
            
            case maximum = "maximum"
            
            case minimum = "minimum"
            
        }

        public init(incrementUnit: Double? = nil, maximum: Double? = nil, minimum: Double? = nil) {
            
            self.incrementUnit = incrementUnit
            
            self.maximum = maximum
            
            self.minimum = minimum
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                incrementUnit = try container.decode(Double.self, forKey: .incrementUnit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                maximum = try container.decode(Double.self, forKey: .maximum)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                minimum = try container.decode(Double.self, forKey: .minimum)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(incrementUnit, forKey: .incrementUnit)
            
            
            
            try? container.encodeIfPresent(maximum, forKey: .maximum)
            
            
            
            try? container.encodeIfPresent(minimum, forKey: .minimum)
            
            
        }
        
    }
}
