

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: AddCartDetailResult
        Used By: Cart
    */
    class AddCartDetailResult: Codable {
        
        public var message: String?
        
        public var partial: Bool?
        
        public var cart: CartDetailResult?
        
        public var success: Bool?
        
        public var result: [String: Any]?
        
        public var items: [CartItemInfo]?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case partial = "partial"
            
            case cart = "cart"
            
            case success = "success"
            
            case result = "result"
            
            case items = "items"
            
        }

        public init(cart: CartDetailResult? = nil, items: [CartItemInfo]? = nil, message: String? = nil, partial: Bool? = nil, result: [String: Any]? = nil, success: Bool? = nil) {
            
            self.message = message
            
            self.partial = partial
            
            self.cart = cart
            
            self.success = success
            
            self.result = result
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
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
                cart = try container.decode(CartDetailResult.self, forKey: .cart)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(partial, forKey: .partial)
            
            
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(result, forKey: .result)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}
