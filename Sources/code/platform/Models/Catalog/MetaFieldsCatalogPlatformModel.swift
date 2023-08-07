

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MetaFields
        Used By: Catalog
    */

    class MetaFields: Codable {
        
        
        public var key: [String: Any]
        
        public var value: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case value = "value"
            
        }

        public init(key: [String: Any], value: [String: Any]) {
            
            self.key = key
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                key = try container.decode([String: Any].self, forKey: .key)
                
            
            
            
                value = try container.decode([String: Any].self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MetaFields
        Used By: Catalog
    */

    class MetaFields: Codable {
        
        
        public var key: [String: Any]
        
        public var value: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case value = "value"
            
        }

        public init(key: [String: Any], value: [String: Any]) {
            
            self.key = key
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                key = try container.decode([String: Any].self, forKey: .key)
                
            
            
            
                value = try container.decode([String: Any].self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}


