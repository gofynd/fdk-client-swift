

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AutocompleteResponseSchema
        Used By: Catalog
    */

    class AutocompleteResponseSchema: Codable {
        
        
        public var id: String?
        
        public var querySuggestion: [String: Any]?
        
        public var productSuggestion: [String: Any]?
        
        public var collectionSuggestion: [String: Any]?
        
        public var brandSuggestion: [String: Any]?
        
        public var categorySuggestion: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case querySuggestion = "query_suggestion"
            
            case productSuggestion = "product_suggestion"
            
            case collectionSuggestion = "collection_suggestion"
            
            case brandSuggestion = "brand_suggestion"
            
            case categorySuggestion = "category_suggestion"
            
        }

        public init(brandSuggestion: [String: Any]? = nil, categorySuggestion: [String: Any]? = nil, collectionSuggestion: [String: Any]? = nil, id: String? = nil, productSuggestion: [String: Any]? = nil, querySuggestion: [String: Any]? = nil) {
            
            self.id = id
            
            self.querySuggestion = querySuggestion
            
            self.productSuggestion = productSuggestion
            
            self.collectionSuggestion = collectionSuggestion
            
            self.brandSuggestion = brandSuggestion
            
            self.categorySuggestion = categorySuggestion
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    querySuggestion = try container.decode([String: Any].self, forKey: .querySuggestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productSuggestion = try container.decode([String: Any].self, forKey: .productSuggestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collectionSuggestion = try container.decode([String: Any].self, forKey: .collectionSuggestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandSuggestion = try container.decode([String: Any].self, forKey: .brandSuggestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categorySuggestion = try container.decode([String: Any].self, forKey: .categorySuggestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(querySuggestion, forKey: .querySuggestion)
            
            
            
            
            try? container.encodeIfPresent(productSuggestion, forKey: .productSuggestion)
            
            
            
            
            try? container.encodeIfPresent(collectionSuggestion, forKey: .collectionSuggestion)
            
            
            
            
            try? container.encodeIfPresent(brandSuggestion, forKey: .brandSuggestion)
            
            
            
            
            try? container.encodeIfPresent(categorySuggestion, forKey: .categorySuggestion)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AutocompleteResponseSchema
        Used By: Catalog
    */

    class AutocompleteResponseSchema: Codable {
        
        
        public var id: String?
        
        public var querySuggestion: [String: Any]?
        
        public var productSuggestion: [String: Any]?
        
        public var collectionSuggestion: [String: Any]?
        
        public var brandSuggestion: [String: Any]?
        
        public var categorySuggestion: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case querySuggestion = "query_suggestion"
            
            case productSuggestion = "product_suggestion"
            
            case collectionSuggestion = "collection_suggestion"
            
            case brandSuggestion = "brand_suggestion"
            
            case categorySuggestion = "category_suggestion"
            
        }

        public init(brandSuggestion: [String: Any]? = nil, categorySuggestion: [String: Any]? = nil, collectionSuggestion: [String: Any]? = nil, id: String? = nil, productSuggestion: [String: Any]? = nil, querySuggestion: [String: Any]? = nil) {
            
            self.id = id
            
            self.querySuggestion = querySuggestion
            
            self.productSuggestion = productSuggestion
            
            self.collectionSuggestion = collectionSuggestion
            
            self.brandSuggestion = brandSuggestion
            
            self.categorySuggestion = categorySuggestion
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    querySuggestion = try container.decode([String: Any].self, forKey: .querySuggestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productSuggestion = try container.decode([String: Any].self, forKey: .productSuggestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collectionSuggestion = try container.decode([String: Any].self, forKey: .collectionSuggestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandSuggestion = try container.decode([String: Any].self, forKey: .brandSuggestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categorySuggestion = try container.decode([String: Any].self, forKey: .categorySuggestion)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(querySuggestion, forKey: .querySuggestion)
            
            
            
            
            try? container.encodeIfPresent(productSuggestion, forKey: .productSuggestion)
            
            
            
            
            try? container.encodeIfPresent(collectionSuggestion, forKey: .collectionSuggestion)
            
            
            
            
            try? container.encodeIfPresent(brandSuggestion, forKey: .brandSuggestion)
            
            
            
            
            try? container.encodeIfPresent(categorySuggestion, forKey: .categorySuggestion)
            
            
        }
        
    }
}


