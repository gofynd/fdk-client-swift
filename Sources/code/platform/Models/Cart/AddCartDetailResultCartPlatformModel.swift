

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: AddCartDetailResult
        Used By: Cart
    */

    class AddCartDetailResult: Codable {
        
        
        public var success: Bool?
        
        public var cart: CartDetailResult?
        
        public var partial: Bool?
        
        public var message: String?
        
        public var result: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case cart = "cart"
            
            case partial = "partial"
            
            case message = "message"
            
            case result = "result"
            
        }

        public init(cart: CartDetailResult? = nil, message: String? = nil, partial: Bool? = nil, result: [String: Any]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.cart = cart
            
            self.partial = partial
            
            self.message = message
            
            self.result = result
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cart = try container.decode(CartDetailResult.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    partial = try container.decode(Bool.self, forKey: .partial)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    result = try container.decode([String: Any].self, forKey: .result)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            
            
            
            try? container.encodeIfPresent(partial, forKey: .partial)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(result, forKey: .result)
            
            
        }
        
    }
}


