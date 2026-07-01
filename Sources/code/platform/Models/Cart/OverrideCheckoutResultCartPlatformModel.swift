

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OverrideCheckoutResult
        Used By: Cart
    */

    class OverrideCheckoutResult: Codable {
        
        
        public var data: OverrideCheckoutData
        
        public var cart: CheckCart
        
        public var success: String
        
        public var orderId: String
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case cart = "cart"
            
            case success = "success"
            
            case orderId = "order_id"
            
            case message = "message"
            
        }

        public init(cart: CheckCart, data: OverrideCheckoutData, message: String, orderId: String, success: String) {
            
            self.data = data
            
            self.cart = cart
            
            self.success = success
            
            self.orderId = orderId
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode(OverrideCheckoutData.self, forKey: .data)
                
            
            
            
                cart = try container.decode(CheckCart.self, forKey: .cart)
                
            
            
            
                success = try container.decode(String.self, forKey: .success)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(cart, forKey: .cart)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


