

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: DiscountRules
        Used By: Cart
    */
    class DiscountRules: Codable {
        
        public var discountedPrice: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case discountedPrice = "discounted_price"
            
        }

        public init(discountedPrice: Double? = nil) {
            
            self.discountedPrice = discountedPrice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                discountedPrice = try container.decode(Double.self, forKey: .discountedPrice)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(discountedPrice, forKey: .discountedPrice)
            
            
        }
        
    }
}
