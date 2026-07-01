

import Foundation


public extension PlatformClient.Order {
    /*
        Model: LifecycleMessageSchema
        Used By: Order
    */

    class LifecycleMessageSchema: Codable {
        
        
        public var message: String
        
        public var type: String
        
        public var states: [String]
        
        public var priority: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case type = "type"
            
            case states = "states"
            
            case priority = "priority"
            
        }

        public init(message: String, priority: Int, states: [String], type: String) {
            
            self.message = message
            
            self.type = type
            
            self.states = states
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                states = try container.decode([String].self, forKey: .states)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(states, forKey: .states)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: LifecycleMessageSchema
        Used By: Order
    */

    class LifecycleMessageSchema: Codable {
        
        
        public var message: String
        
        public var type: String
        
        public var states: [String]
        
        public var priority: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case type = "type"
            
            case states = "states"
            
            case priority = "priority"
            
        }

        public init(message: String, priority: Int, states: [String], type: String) {
            
            self.message = message
            
            self.type = type
            
            self.states = states
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                states = try container.decode([String].self, forKey: .states)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(states, forKey: .states)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}


