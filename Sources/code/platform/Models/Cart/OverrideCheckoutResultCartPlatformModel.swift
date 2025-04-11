

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OverrideCheckoutResult
        Used By: Cart
    */

    class OverrideCheckoutResult: Codable {
        
        
        public var data: [String: Any]
        
        public var cart: [String: Any]
        
        public var success: Bool
        
        public var orderId: String
        
        public var message: String
        
        public var appInterceptUrl: String?
        
        public var callbackUrl: String?
        
        public var paymentConfirmUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case cart = "cart"
            
            case success = "success"
            
            case orderId = "order_id"
            
            case message = "message"
            
            case appInterceptUrl = "app_intercept_url"
            
            case callbackUrl = "callback_url"
            
            case paymentConfirmUrl = "payment_confirm_url"
            
        }

        public init(appInterceptUrl: String? = nil, callbackUrl: String? = nil, cart: [String: Any], data: [String: Any], message: String, orderId: String, paymentConfirmUrl: String? = nil, success: Bool) {
            
            self.data = data
            
            self.cart = cart
            
            self.success = success
            
            self.orderId = orderId
            
            self.message = message
            
            self.appInterceptUrl = appInterceptUrl
            
            self.callbackUrl = callbackUrl
            
            self.paymentConfirmUrl = paymentConfirmUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode([String: Any].self, forKey: .data)
                
            
            
            
                cart = try container.decode([String: Any].self, forKey: .cart)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    appInterceptUrl = try container.decode(String.self, forKey: .appInterceptUrl)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(appInterceptUrl, forKey: .appInterceptUrl)
            
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(paymentConfirmUrl, forKey: .paymentConfirmUrl)
            
            
        }
        
    }
}


