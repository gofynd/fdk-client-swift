

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: DefaultKeyRequest
        Used By: Catalog
    */

    class DefaultKeyRequest: Codable {
        
        
        public var defaultKey: String
        

        public enum CodingKeys: String, CodingKey {
            
            case defaultKey = "default_key"
            
        }

        public init(defaultKey: String) {
            
            self.defaultKey = defaultKey
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                defaultKey = try container.decode(String.self, forKey: .defaultKey)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: DefaultKeyRequest
        Used By: Catalog
    */

    class DefaultKeyRequest: Codable {
        
        
        public var defaultKey: String
        

        public enum CodingKeys: String, CodingKey {
            
            case defaultKey = "default_key"
            
        }

        public init(defaultKey: String) {
            
            self.defaultKey = defaultKey
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                defaultKey = try container.decode(String.self, forKey: .defaultKey)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)
            
            
        }
        
    }
}


