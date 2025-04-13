

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CollectionItemUpdateSchema
        Used By: Catalog
    */

    class CollectionItemUpdateSchema: Codable {
        
        
        public var allowFacets: Bool?
        
        public var allowSort: Bool?
        
        public var items: [CollectionItemSchemaV2]?
        
        public var query: [CollectionQuerySchemaV2]?
        
        public var type: String
        
        public var visibleFacetsKeys: [String]?
        
        public var resetItems: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case allowFacets = "allow_facets"
            
            case allowSort = "allow_sort"
            
            case items = "items"
            
            case query = "query"
            
            case type = "type"
            
            case visibleFacetsKeys = "visible_facets_keys"
            
            case resetItems = "reset_items"
            
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, items: [CollectionItemSchemaV2]? = nil, query: [CollectionQuerySchemaV2]? = nil, resetItems: Bool? = nil, type: String, visibleFacetsKeys: [String]? = nil) {
            
            self.allowFacets = allowFacets
            
            self.allowSort = allowSort
            
            self.items = items
            
            self.query = query
            
            self.type = type
            
            self.visibleFacetsKeys = visibleFacetsKeys
            
            self.resetItems = resetItems
            
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
                    items = try container.decode([CollectionItemSchemaV2].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode([CollectionQuerySchemaV2].self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    resetItems = try container.decode(Bool.self, forKey: .resetItems)
                
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
            
            
            
            
            try? container.encodeIfPresent(resetItems, forKey: .resetItems)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CollectionItemUpdateSchema
        Used By: Catalog
    */

    class CollectionItemUpdateSchema: Codable {
        
        
        public var allowFacets: Bool?
        
        public var allowSort: Bool?
        
        public var items: [CollectionItemSchemaV2]?
        
        public var query: [CollectionQuerySchemaV2]?
        
        public var type: String
        
        public var visibleFacetsKeys: [String]?
        
        public var resetItems: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case allowFacets = "allow_facets"
            
            case allowSort = "allow_sort"
            
            case items = "items"
            
            case query = "query"
            
            case type = "type"
            
            case visibleFacetsKeys = "visible_facets_keys"
            
            case resetItems = "reset_items"
            
        }

        public init(allowFacets: Bool? = nil, allowSort: Bool? = nil, items: [CollectionItemSchemaV2]? = nil, query: [CollectionQuerySchemaV2]? = nil, resetItems: Bool? = nil, type: String, visibleFacetsKeys: [String]? = nil) {
            
            self.allowFacets = allowFacets
            
            self.allowSort = allowSort
            
            self.items = items
            
            self.query = query
            
            self.type = type
            
            self.visibleFacetsKeys = visibleFacetsKeys
            
            self.resetItems = resetItems
            
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
                    items = try container.decode([CollectionItemSchemaV2].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode([CollectionQuerySchemaV2].self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    visibleFacetsKeys = try container.decode([String].self, forKey: .visibleFacetsKeys)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    resetItems = try container.decode(Bool.self, forKey: .resetItems)
                
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
            
            
            
            
            try? container.encodeIfPresent(resetItems, forKey: .resetItems)
            
            
        }
        
    }
}


