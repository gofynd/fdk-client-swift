

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CollectionItemUpdate
        Used By: Catalog
    */

    class CollectionItemUpdate: Codable {
        
        
        public var allowFacets: Bool?
        
        public var allowSort: Bool?
        
        public var items: [CollectionItem]?
        
        public var query: [CollectionQuery]?
        
        public var type: String?
        
        public var visibleFacetsKeys: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case allowFacets = "allow_facets"
            
            case allowSort = "allow_sort"
            
            case items = "items"
            
            case query = "query"
            
            case type = "type"
            
            case visibleFacetsKeys = "visible_facets_keys"
            
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, items: [CollectionItem]? = nil, query: [CollectionQuery]? = nil, type: String? = nil, visibleFacetsKeys: [String]? = nil) {
            
            self.allowFacets = allowFacets
            
            self.allowSort = allowSort
            
            self.items = items
            
            self.query = query
            
            self.type = type
            
            self.visibleFacetsKeys = visibleFacetsKeys
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    allowFacets = try container.decode(Bool.self, forKey: .allowFacets)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowSort = try container.decode(Bool.self, forKey: .allowSort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([CollectionItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode([CollectionQuery].self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
            
            
            
            
            try? container.encodeIfPresent(allowSort, forKey: .allowSort)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CollectionItemUpdate
        Used By: Catalog
    */

    class CollectionItemUpdate: Codable {
        
        
        public var allowFacets: Bool?
        
        public var allowSort: Bool?
        
        public var items: [CollectionItem]?
        
        public var query: [CollectionQuery]?
        
        public var type: String?
        
        public var visibleFacetsKeys: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case allowFacets = "allow_facets"
            
            case allowSort = "allow_sort"
            
            case items = "items"
            
            case query = "query"
            
            case type = "type"
            
            case visibleFacetsKeys = "visible_facets_keys"
            
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, items: [CollectionItem]? = nil, query: [CollectionQuery]? = nil, type: String? = nil, visibleFacetsKeys: [String]? = nil) {
            
            self.allowFacets = allowFacets
            
            self.allowSort = allowSort
            
            self.items = items
            
            self.query = query
            
            self.type = type
            
            self.visibleFacetsKeys = visibleFacetsKeys
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    allowFacets = try container.decode(Bool.self, forKey: .allowFacets)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowSort = try container.decode(Bool.self, forKey: .allowSort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([CollectionItem].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode([CollectionQuery].self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(allowFacets, forKey: .allowFacets)
            
            
            
            
            try? container.encodeIfPresent(allowSort, forKey: .allowSort)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(visibleFacetsKeys, forKey: .visibleFacetsKeys)
            
            
        }
        
    }
}


