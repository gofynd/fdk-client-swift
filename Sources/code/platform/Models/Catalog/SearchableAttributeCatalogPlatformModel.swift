

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SearchableAttribute
        Used By: Catalog
    */

    class SearchableAttribute: Codable {
        
        
        public var key: String
        
        public var name: String
        
        public var priority: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case name = "name"
            
            case priority = "priority"
            
        }

        public init(key: String, name: String, priority: Double) {
            
            self.key = key
            
            self.name = name
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                priority = try container.decode(Double.self, forKey: .priority)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SearchableAttribute
        Used By: Catalog
    */

    class SearchableAttribute: Codable {
        
        
        public var key: String
        
        public var name: String
        
        public var priority: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case name = "name"
            
            case priority = "priority"
            
        }

        public init(key: String, name: String, priority: Double) {
            
            self.key = key
            
            self.name = name
            
            self.priority = priority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                priority = try container.decode(Double.self, forKey: .priority)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
        }
        
    }
}


