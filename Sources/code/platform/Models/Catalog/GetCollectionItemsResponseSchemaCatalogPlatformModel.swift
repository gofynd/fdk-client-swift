

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetCollectionItemsResponseSchema
        Used By: Catalog
    */

    class GetCollectionItemsResponseSchema: Codable {
        
        
        public var items: [ApplicationProductsSchema]?
        
        public var sortOn: [ProductSortOn]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case sortOn = "sort_on"
            
            case page = "page"
            
        }

        public init(items: [ApplicationProductsSchema]? = nil, page: Page? = nil, sortOn: [ProductSortOn]? = nil) {
            
            self.items = items
            
            self.sortOn = sortOn
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([ApplicationProductsSchema].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetCollectionItemsResponseSchema
        Used By: Catalog
    */

    class GetCollectionItemsResponseSchema: Codable {
        
        
        public var items: [ApplicationProductsSchema]?
        
        public var sortOn: [ProductSortOn]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case sortOn = "sort_on"
            
            case page = "page"
            
        }

        public init(items: [ApplicationProductsSchema]? = nil, page: Page? = nil, sortOn: [ProductSortOn]? = nil) {
            
            self.items = items
            
            self.sortOn = sortOn
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([ApplicationProductsSchema].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}


