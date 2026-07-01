

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentCustomConfigResponseSchema
        Used By: Payment
    */

    class PaymentCustomConfigResponseSchema: Codable {
        
        
        public var success: Bool
        
        public var message: String
        
        public var items: [PaymentModeCustomConfigSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case items = "items"
            
        }

        public init(items: [PaymentModeCustomConfigSchema], message: String, success: Bool) {
            
            self.success = success
            
            self.message = message
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                items = try container.decode([PaymentModeCustomConfigSchema].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentCustomConfigResponseSchema
        Used By: Payment
    */

    class PaymentCustomConfigResponseSchema: Codable {
        
        
        public var success: Bool
        
        public var message: String
        
        public var items: [PaymentModeCustomConfigSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case message = "message"
            
            case items = "items"
            
        }

        public init(items: [PaymentModeCustomConfigSchema], message: String, success: Bool) {
            
            self.success = success
            
            self.message = message
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                items = try container.decode([PaymentModeCustomConfigSchema].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


