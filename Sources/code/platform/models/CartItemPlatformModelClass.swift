

import Foundation
public extension PlatformClient {
    /*
        Model: CartItem
        Used By: Cart
    */

    class CartItem: Codable {
        
        
        public var size: String
        
        public var productId: String
        
        public var quantity: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case size = "size"
            
            case productId = "product_id"
            
            case quantity = "quantity"
            
        }

        public init(productId: String, quantity: Int? = nil, size: String) {
            
            self.size = size
            
            self.productId = productId
            
            self.quantity = quantity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                size = try container.decode(String.self, forKey: .size)
                
            
            
            
                productId = try container.decode(String.self, forKey: .productId)
                
            
            
            
                do {
                    quantity = try container.decode(Int.self, forKey: .quantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(productId, forKey: .productId)
            
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
        }
        
    }
}
