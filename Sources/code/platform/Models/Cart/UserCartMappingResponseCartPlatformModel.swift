

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: UserCartMappingResponse
        Used By: Cart
    */

    class UserCartMappingResponse: Codable {
        
        
        public var isValid: Bool?
        
        public var message: String?
        
        public var success: Bool?
        
        public var cart: CartDetailResponse?
        
        public var user: CartMappingUserInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case isValid = "is_valid"
            
            case message = "message"
            
            case success = "success"
            
            case cart = "cart"
            
            case user = "user"
            
        }

        public init(cart: CartDetailResponse? = nil, isValid: Bool? = nil, message: String? = nil, success: Bool? = nil, user: CartMappingUserInfo? = nil) {
            
            self.isValid = isValid
            
            self.message = message
            
            self.success = success
            
            self.cart = cart
            
            self.user = user
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isValid = try container.decode(Bool.self, forKey: .isValid)
                
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
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cart = try container.decode(CartDetailResponse.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    user = try container.decode(CartMappingUserInfo.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isValid, forKey: .isValid)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
        }
        
    }
}


