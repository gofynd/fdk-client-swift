

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: SharedCartResult
        Used By: Cart
    */

    class SharedCartResult: Codable {
        
        
        public var cart: SharedCart?
        
        public var error: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case cart = "cart"
            
            case error = "error"
            
        }

        public init(cart: SharedCart? = nil, error: String? = nil) {
            
            self.cart = cart
            
            self.error = error
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    cart = try container.decode(SharedCart.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    error = try container.decode(String.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
        }
        
    }
}


