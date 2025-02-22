

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RuleError
        Used By: Order
    */

    class RuleError: Codable {
        
        
        public var type: String
        
        public var value: String
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case value = "value"
            
            case message = "message"
            
        }

        public init(message: String, type: String, value: String) {
            
            self.type = type
            
            self.value = value
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RuleError
        Used By: Order
    */

    class RuleError: Codable {
        
        
        public var type: String
        
        public var value: String
        
        public var message: String
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case value = "value"
            
            case message = "message"
            
        }

        public init(message: String, type: String, value: String) {
            
            self.type = type
            
            self.value = value
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


