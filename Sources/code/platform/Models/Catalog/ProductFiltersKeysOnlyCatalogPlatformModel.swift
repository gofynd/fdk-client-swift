

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductFiltersKeysOnly
        Used By: Catalog
    */

    class ProductFiltersKeysOnly: Codable {
        
        
        public var key: ProductFiltersKey
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
        }

        public init(key: ProductFiltersKey) {
            
            self.key = key
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                key = try container.decode(ProductFiltersKey.self, forKey: .key)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductFiltersKeysOnly
        Used By: Catalog
    */

    class ProductFiltersKeysOnly: Codable {
        
        
        public var key: ProductFiltersKey
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
        }

        public init(key: ProductFiltersKey) {
            
            self.key = key
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                key = try container.decode(ProductFiltersKey.self, forKey: .key)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
}


