

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MerchandisingRuleQuery
        Used By: Catalog
    */

    class MerchandisingRuleQuery: Codable {
        
        
        public var condition: String
        
        public var searchQuery: String
        
        public var synonyms: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case condition = "condition"
            
            case searchQuery = "search_query"
            
            case synonyms = "synonyms"
            
        }

        public init(condition: String, searchQuery: String, synonyms: Bool) {
            
            self.condition = condition
            
            self.searchQuery = searchQuery
            
            self.synonyms = synonyms
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                condition = try container.decode(String.self, forKey: .condition)
                
            
            
            
                searchQuery = try container.decode(String.self, forKey: .searchQuery)
                
            
            
            
                synonyms = try container.decode(Bool.self, forKey: .synonyms)
                
            
            
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
        
        
        public var condition: String
        
        public var searchQuery: String
        
        public var synonyms: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case condition = "condition"
            
            case searchQuery = "search_query"
            
            case synonyms = "synonyms"
            
        }

        public init(condition: String, searchQuery: String, synonyms: Bool) {
            
            self.condition = condition
            
            self.searchQuery = searchQuery
            
            self.synonyms = synonyms
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                condition = try container.decode(String.self, forKey: .condition)
                
            
            
            
                searchQuery = try container.decode(String.self, forKey: .searchQuery)
                
            
            
            
                synonyms = try container.decode(Bool.self, forKey: .synonyms)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(condition, forKey: .condition)
            
            
            
            
            try? container.encodeIfPresent(searchQuery, forKey: .searchQuery)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
        }
        
    }
}


