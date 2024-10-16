

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartItemCountResult
        Used By: Cart
    */
    class CartItemCountResult: Codable {
        
        public var userCartItemsCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case userCartItemsCount = "user_cart_items_count"
            
        }

        public init(userCartItemsCount: Int? = nil) {
            
            self.userCartItemsCount = userCartItemsCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                userCartItemsCount = try container.decode(Int.self, forKey: .userCartItemsCount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(userCartItemsCount, forKey: .userCartItemsCount)
            
            
        }
        
    }
}
