

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentConfirmationResponse
        Used By: Payment
    */

    class PaymentConfirmationResponse: Codable {
        
        
        public var orderId: String
        
        public var message: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(message: String, orderId: String, success: Bool) {
            
            self.orderId = orderId
            
            self.message = message
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentConfirmationResponse
        Used By: Payment
    */

    class PaymentConfirmationResponse: Codable {
        
        
        public var orderId: String
        
        public var message: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case message = "message"
            
            case success = "success"
            
        }

        public init(message: String, orderId: String, success: Bool) {
            
            self.orderId = orderId
            
            self.message = message
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


