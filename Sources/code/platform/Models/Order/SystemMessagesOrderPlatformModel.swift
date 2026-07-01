

import Foundation


public extension PlatformClient.Order {
    /*
        Model: SystemMessages
        Used By: Order
    */

    class SystemMessages: Codable {
        
        
        public var messageType: String
        
        public var priority: Double
        
        public var message: String
        
        public var injectAt: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case messageType = "message_type"
            
            case priority = "priority"
            
            case message = "message"
            
            case injectAt = "inject_at"
            
        }

        public init(injectAt: [String]? = nil, message: String, messageType: String, priority: Double) {
            
            self.messageType = messageType
            
            self.priority = priority
            
            self.message = message
            
            self.injectAt = injectAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                messageType = try container.decode(String.self, forKey: .messageType)
                
            
            
            
                priority = try container.decode(Double.self, forKey: .priority)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    injectAt = try container.decode([String].self, forKey: .injectAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(messageType, forKey: .messageType)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(injectAt, forKey: .injectAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: SystemMessages
        Used By: Order
    */

    class SystemMessages: Codable {
        
        
        public var messageType: String
        
        public var priority: Double
        
        public var message: String
        
        public var injectAt: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case messageType = "message_type"
            
            case priority = "priority"
            
            case message = "message"
            
            case injectAt = "inject_at"
            
        }

        public init(injectAt: [String]? = nil, message: String, messageType: String, priority: Double) {
            
            self.messageType = messageType
            
            self.priority = priority
            
            self.message = message
            
            self.injectAt = injectAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                messageType = try container.decode(String.self, forKey: .messageType)
                
            
            
            
                priority = try container.decode(Double.self, forKey: .priority)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                do {
                    injectAt = try container.decode([String].self, forKey: .injectAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(messageType, forKey: .messageType)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(injectAt, forKey: .injectAt)
            
            
        }
        
    }
}


