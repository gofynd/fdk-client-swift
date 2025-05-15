

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ServiceabilityErrorResult
        Used By: Serviceability
    */

    class ServiceabilityErrorResult: Codable {
        
        
        public var message: String
        
        public var value: String
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(message: String, type: String, value: String) {
            
            self.message = message
            
            self.value = value
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ServiceabilityErrorResult
        Used By: Serviceability
    */

    class ServiceabilityErrorResult: Codable {
        
        
        public var message: String
        
        public var value: String
        
        public var type: String
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case value = "value"
            
            case type = "type"
            
        }

        public init(message: String, type: String, value: String) {
            
            self.message = message
            
            self.value = value
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


