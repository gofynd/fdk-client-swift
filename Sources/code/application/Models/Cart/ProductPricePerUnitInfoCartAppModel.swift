

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ProductPricePerUnitInfo
        Used By: Cart
    */
    class ProductPricePerUnitInfo: Codable {
        
        public var base: ProductPricePerUnit?
        
        public var converted: ProductPricePerUnit?
        

        public enum CodingKeys: String, CodingKey {
            
            case base = "base"
            
            case converted = "converted"
            
        }

        public init(base: ProductPricePerUnit? = nil, converted: ProductPricePerUnit? = nil) {
            
            self.base = base
            
            self.converted = converted
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                base = try container.decode(ProductPricePerUnit.self, forKey: .base)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                converted = try container.decode(ProductPricePerUnit.self, forKey: .converted)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(base, forKey: .base)
            
            
            
            try? container.encodeIfPresent(converted, forKey: .converted)
            
            
        }
        
    }
}
