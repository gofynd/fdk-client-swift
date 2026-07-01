

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OpenapiCartDetailsCreation
        Used By: Cart
    */

    class OpenapiCartDetailsCreation: Codable {
        
        
        public var cartItems: [CartItem]
        

        public enum CodingKeys: String, CodingKey {
            
            case cartItems = "cart_items"
            
        }

        public init(cartItems: [CartItem]) {
            
            self.cartItems = cartItems
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                cartItems = try container.decode([CartItem].self, forKey: .cartItems)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cartItems, forKey: .cartItems)
            
            
        }
        
    }
}


