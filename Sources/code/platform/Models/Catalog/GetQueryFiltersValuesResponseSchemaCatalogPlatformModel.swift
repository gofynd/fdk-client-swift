

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetQueryFiltersValuesResponseSchema
        Used By: Catalog
    */

    class GetQueryFiltersValuesResponseSchema: Codable {
        
        
        public var values: [ProductQueryFiltersValue]
        
        public var page: Page
        

        public enum CodingKeys: String, CodingKey {
            
            case values = "values"
            
            case page = "page"
            
        }

        public init(page: Page, values: [ProductQueryFiltersValue]) {
            
            self.values = values
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                values = try container.decode([ProductQueryFiltersValue].self, forKey: .values)
                
            
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetQueryFiltersValuesResponseSchema
        Used By: Catalog
    */

    class GetQueryFiltersValuesResponseSchema: Codable {
        
        
        public var values: [ProductQueryFiltersValue]
        
        public var page: Page
        

        public enum CodingKeys: String, CodingKey {
            
            case values = "values"
            
            case page = "page"
            
        }

        public init(page: Page, values: [ProductQueryFiltersValue]) {
            
            self.values = values
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                values = try container.decode([ProductQueryFiltersValue].self, forKey: .values)
                
            
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(values, forKey: .values)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


