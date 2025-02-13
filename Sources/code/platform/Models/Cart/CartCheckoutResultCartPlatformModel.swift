

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CartCheckoutResult
        Used By: Cart
    */

    class CartCheckoutResult: Codable {
        
        
        public var appInterceptUrl: String?
        
        public var data: [String: Any]?
        
        public var cart: CheckCart?
        
        public var success: Bool?
        
        public var callbackUrl: String?
        
        public var paymentConfirmUrl: String?
        
        public var orderId: String?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case appInterceptUrl = "app_intercept_url"
            
            case data = "data"
            
            case cart = "cart"
            
            case success = "success"
            
            case callbackUrl = "callback_url"
            
            case paymentConfirmUrl = "payment_confirm_url"
            
            case orderId = "order_id"
            
            case message = "message"
            
        }

        public init(appInterceptUrl: String? = nil, callbackUrl: String? = nil, cart: CheckCart? = nil, data: [String: Any]? = nil, message: String? = nil, orderId: String? = nil, paymentConfirmUrl: String? = nil, success: Bool? = nil) {
            
            self.appInterceptUrl = appInterceptUrl
            
            self.data = data
            
            self.cart = cart
            
            self.success = success
            
            self.callbackUrl = callbackUrl
            
            self.paymentConfirmUrl = paymentConfirmUrl
            
            self.orderId = orderId
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appInterceptUrl = try container.decode(String.self, forKey: .appInterceptUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode([String: Any].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cart = try container.decode(CheckCart.self, forKey: .cart)
                
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
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentConfirmUrl = try container.decode(String.self, forKey: .paymentConfirmUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
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
            
            
            
            try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(paymentConfirmUrl, forKey: .paymentConfirmUrl)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


