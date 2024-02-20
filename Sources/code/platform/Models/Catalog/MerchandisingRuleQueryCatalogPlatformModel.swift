

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MerchandisingRuleQuery
        Used By: Catalog
    */

    class MerchandisingRuleQuery: Codable {
        
        
        public var condition: String?
        
        public var searchQuery: String?
        
        public var synonyms: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case condition = "condition"
            
            case searchQuery = "search_query"
            
            case synonyms = "synonyms"
            
        }

        public init(condition: String? = nil, searchQuery: String? = nil, synonyms: String? = nil) {
            
            self.condition = condition
            
            self.searchQuery = searchQuery
            
            self.synonyms = synonyms
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    condition = try container.decode(String.self, forKey: .condition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    searchQuery = try container.decode(String.self, forKey: .searchQuery)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode(String.self, forKey: .synonyms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(condition, forKey: .condition)
            
            
            
            
            try? container.encodeIfPresent(searchQuery, forKey: .searchQuery)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MerchandisingRuleQuery
        Used By: Catalog
    */

    class MerchandisingRuleQuery: Codable {
        
        
        public var condition: String?
        
        public var searchQuery: String?
        
        public var synonyms: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case condition = "condition"
            
            case searchQuery = "search_query"
            
            case synonyms = "synonyms"
            
        }

        public init(condition: String? = nil, searchQuery: String? = nil, synonyms: String? = nil) {
            
            self.condition = condition
            
            self.searchQuery = searchQuery
            
            self.synonyms = synonyms
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    condition = try container.decode(String.self, forKey: .condition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    searchQuery = try container.decode(String.self, forKey: .searchQuery)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode(String.self, forKey: .synonyms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(condition, forKey: .condition)
            
            
            
            
            try? container.encodeIfPresent(searchQuery, forKey: .searchQuery)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
        }
        
    }
}


