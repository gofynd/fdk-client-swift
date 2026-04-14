

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: OrderingSources
        Used By: Configuration
    */
    class OrderingSources: Codable {
        
        public var key: String
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case name = "name"
            
        }

        public init(key: String, name: String) {
            
            self.key = key
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            key = try container.decode(String.self, forKey: .key)
            
            
            
            
            name = try container.decode(String.self, forKey: .name)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}
