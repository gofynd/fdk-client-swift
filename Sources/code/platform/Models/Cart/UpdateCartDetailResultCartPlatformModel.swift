

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: UpdateCartDetailResult
        Used By: Cart
    */

    class UpdateCartDetailResult: Codable {
        
        
        public var success: Bool?
        
        public var cart: CartDetailResult?
        
        public var result: [String: Any]?
        
        public var items: [CartItemInfo]?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case cart = "cart"
            
            case result = "result"
            
            case items = "items"
            
            case message = "message"
            
        }

        public init(cart: CartDetailResult? = nil, items: [CartItemInfo]? = nil, message: String? = nil, result: [String: Any]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.cart = cart
            
            self.result = result
            
            self.items = items
            
            self.message = message
            
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
                    result = try container.decode([String: Any].self, forKey: .result)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([CartItemInfo].self, forKey: .items)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            
            
            
            try? container.encodeIfPresent(result, forKey: .result)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


