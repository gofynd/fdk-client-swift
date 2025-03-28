

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundSourcesPriority
        Used By: Payment
    */

    class RefundSourcesPriority: Codable {
        
        
        public var enabled: Bool?
        
        public var description: String
        
        public var priority: Int
        
        public var source: String
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case description = "description"
            
            case priority = "priority"
            
            case source = "source"
            
        }

        public init(description: String, enabled: Bool? = nil, priority: Int, source: String) {
            
            self.enabled = enabled
            
            self.description = description
            
            self.priority = priority
            
            self.source = source
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                source = try container.decode(String.self, forKey: .source)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundSourcesPriority
        Used By: Payment
    */

    class RefundSourcesPriority: Codable {
        
        
        public var enabled: Bool?
        
        public var description: String
        
        public var priority: Int
        
        public var source: String
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case description = "description"
            
            case priority = "priority"
            
            case source = "source"
            
        }

        public init(description: String, enabled: Bool? = nil, priority: Int, source: String) {
            
            self.enabled = enabled
            
            self.description = description
            
            self.priority = priority
            
            self.source = source
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                source = try container.decode(String.self, forKey: .source)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
        }
        
    }
}


