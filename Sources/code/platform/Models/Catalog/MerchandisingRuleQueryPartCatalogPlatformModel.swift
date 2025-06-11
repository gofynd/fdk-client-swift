

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MerchandisingRuleQueryPart
        Used By: Catalog
    */

    class MerchandisingRuleQueryPart: Codable {
        
        
        public var filter: [Filter]?
        
        public var queryCondition: String?
        
        public var query: MerchandisingRuleQuery?
        

        public enum CodingKeys: String, CodingKey {
            
            case filter = "filter"
            
            case queryCondition = "query_condition"
            
            case query = "query"
            
        }

        public init(filter: [Filter]? = nil, query: MerchandisingRuleQuery? = nil, queryCondition: String? = nil) {
            
            self.filter = filter
            
            self.queryCondition = queryCondition
            
            self.query = query
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filter = try container.decode([Filter].self, forKey: .filter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    queryCondition = try container.decode(String.self, forKey: .queryCondition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode(MerchandisingRuleQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            
            
            
            try? container.encodeIfPresent(queryCondition, forKey: .queryCondition)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MerchandisingRuleQueryPart
        Used By: Catalog
    */

    class MerchandisingRuleQueryPart: Codable {
        
        
        public var filter: [Filter]?
        
        public var queryCondition: String?
        
        public var query: MerchandisingRuleQuery?
        

        public enum CodingKeys: String, CodingKey {
            
            case filter = "filter"
            
            case queryCondition = "query_condition"
            
            case query = "query"
            
        }

        public init(filter: [Filter]? = nil, query: MerchandisingRuleQuery? = nil, queryCondition: String? = nil) {
            
            self.filter = filter
            
            self.queryCondition = queryCondition
            
            self.query = query
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    filter = try container.decode([Filter].self, forKey: .filter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    queryCondition = try container.decode(String.self, forKey: .queryCondition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode(MerchandisingRuleQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            
            
            
            try? container.encodeIfPresent(queryCondition, forKey: .queryCondition)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
        }
        
    }
}


