

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: UpdateCartDetailResult
        Used By: Cart
    */
    class UpdateCartDetailResult: Codable {
        
        public var message: String?
        
        public var result: [String: Any]?
        
        public var cart: CartDetailResult?
        
        public var success: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case result = "result"
            
            case cart = "cart"
            
            case success = "success"
            
        }

        public init(cart: CartDetailResult? = nil, message: String? = nil, result: [String: Any]? = nil, success: Bool? = nil) {
            
            self.message = message
            
            self.result = result
            
            self.cart = cart
            
            self.success = success
            
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
                result = try container.decode([String: Any].self, forKey: .result)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(result, forKey: .result)
            
            
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}
