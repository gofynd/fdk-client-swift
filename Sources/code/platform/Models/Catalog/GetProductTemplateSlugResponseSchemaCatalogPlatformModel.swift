

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetProductTemplateSlugResponseSchema
        Used By: Catalog
    */

    class GetProductTemplateSlugResponseSchema: Codable {
        
        
        public var page: Page
        
        public var items: [GetProductTemplateSlugItemsSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [GetProductTemplateSlugItemsSchema], page: Page) {
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
            
                items = try container.decode([GetProductTemplateSlugItemsSchema].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetProductTemplateSlugResponseSchema
        Used By: Catalog
    */

    class GetProductTemplateSlugResponseSchema: Codable {
        
        
        public var page: Page
        
        public var items: [GetProductTemplateSlugItemsSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case page = "page"
            
            case items = "items"
            
        }

        public init(items: [GetProductTemplateSlugItemsSchema], page: Page) {
            
            self.page = page
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                page = try container.decode(Page.self, forKey: .page)
                
            
            
            
                items = try container.decode([GetProductTemplateSlugItemsSchema].self, forKey: .items)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}


