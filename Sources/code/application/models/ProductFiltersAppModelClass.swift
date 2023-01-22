

import Foundation
public extension ApplicationClient {
    /*
        Model: ProductFilters
        Used By: Catalog
    */
    class ProductFilters: Codable {
        
        public var values: [ProductFiltersValue]
        
        public var key: ProductFiltersKey
        

        public enum CodingKeys: String, CodingKey {
            
            case values = "values"
            
            case key = "key"
            
        }

        public init(key: ProductFiltersKey, values: [ProductFiltersValue]) {
            
            self.values = values
            
            self.key = key
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            values = try container.decode([ProductFiltersValue].self, forKey: .values)
            
            
            
            
            key = try container.decode(ProductFiltersKey.self, forKey: .key)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
        }
        
    }
}
