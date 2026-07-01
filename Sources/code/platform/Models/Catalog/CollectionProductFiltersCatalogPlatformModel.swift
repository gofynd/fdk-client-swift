

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CollectionProductFilters
        Used By: Catalog
    */

    class CollectionProductFilters: Codable {
        
        
        public var key: ProductFiltersKey
        
        public var values: [CollectionProductFiltersValue]
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case values = "values"
            
        }

        public init(key: ProductFiltersKey, values: [CollectionProductFiltersValue]) {
            
            self.key = key
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                key = try container.decode(ProductFiltersKey.self, forKey: .key)
                
            
            
            
                values = try container.decode([CollectionProductFiltersValue].self, forKey: .values)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CollectionProductFilters
        Used By: Catalog
    */

    class CollectionProductFilters: Codable {
        
        
        public var key: ProductFiltersKey
        
        public var values: [CollectionProductFiltersValue]
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case values = "values"
            
        }

        public init(key: ProductFiltersKey, values: [CollectionProductFiltersValue]) {
            
            self.key = key
            
            self.values = values
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                key = try container.decode(ProductFiltersKey.self, forKey: .key)
                
            
            
            
                values = try container.decode([CollectionProductFiltersValue].self, forKey: .values)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
        }
        
    }
}


