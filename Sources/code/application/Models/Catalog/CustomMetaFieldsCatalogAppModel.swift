

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: CustomMetaFields
        Used By: Catalog
    */
    class CustomMetaFields: Codable {
        
        public var value: String
        
        public var key: String
        

        public enum CodingKeys: String, CodingKey {
            
            case value = "value"
            
            case key = "key"
            
        }

        public init(key: String, value: String) {
            
            self.value = value
            
            self.key = key
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            value = try container.decode(String.self, forKey: .value)
            
            
            
            
            key = try container.decode(String.self, forKey: .key)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
}
