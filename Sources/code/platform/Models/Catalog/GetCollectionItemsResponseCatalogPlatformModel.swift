

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: GetCollectionItemsResponse
        Used By: Catalog
    */

    class GetCollectionItemsResponse: Codable {
        
        
        public var filters: [ProductFilters]?
        
        public var items: [ProductListingDetail]?
        
        public var page: Page?
        
        public var sortOn: [ProductSortOn]?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case items = "items"
            
            case page = "page"
            
            case sortOn = "sort_on"
            
        }

        public init(filters: [ProductFilters]? = nil, items: [ProductListingDetail]? = nil, page: Page? = nil, sortOn: [ProductSortOn]? = nil) {
            
            self.filters = filters
            
            self.items = items
            
            self.page = page
            
            self.sortOn = sortOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filters = try container.decode([ProductFilters].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([ProductListingDetail].self, forKey: .items)
                
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
                
            
            
                do {
                    sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: GetCollectionItemsResponse
        Used By: Catalog
    */

    class GetCollectionItemsResponse: Codable {
        
        
        public var filters: [ProductFilters]?
        
        public var items: [ProductListingDetail]?
        
        public var page: Page?
        
        public var sortOn: [ProductSortOn]?
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case items = "items"
            
            case page = "page"
            
            case sortOn = "sort_on"
            
        }

        public init(filters: [ProductFilters]? = nil, items: [ProductListingDetail]? = nil, page: Page? = nil, sortOn: [ProductSortOn]? = nil) {
            
            self.filters = filters
            
            self.items = items
            
            self.page = page
            
            self.sortOn = sortOn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filters = try container.decode([ProductFilters].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([ProductListingDetail].self, forKey: .items)
                
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
                
            
            
                do {
                    sortOn = try container.decode([ProductSortOn].self, forKey: .sortOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(sortOn, forKey: .sortOn)
            
            
        }
        
    }
}


