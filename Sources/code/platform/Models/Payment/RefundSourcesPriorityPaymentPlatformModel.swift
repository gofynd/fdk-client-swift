

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundSourcesPriority
        Used By: Payment
    */

    class RefundSourcesPriority: Codable {
        
        
        public var description: String
        
        public var priority: Int
        
        public var source: String
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case priority = "priority"
            
            case source = "source"
            
        }

        public init(description: String, priority: Int, source: String) {
            
            self.description = description
            
            self.priority = priority
            
            self.source = source
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                source = try container.decode(String.self, forKey: .source)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
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
        
        
        public var description: String
        
        public var priority: Int
        
        public var source: String
        

        public enum CodingKeys: String, CodingKey {
            
            case description = "description"
            
            case priority = "priority"
            
            case source = "source"
            
        }

        public init(description: String, priority: Int, source: String) {
            
            self.description = description
            
            self.priority = priority
            
            self.source = source
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                source = try container.decode(String.self, forKey: .source)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
        }
        
    }
}


