

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MerchandisingQuery
        Used By: Catalog
    */

    class MerchandisingQuery: Codable {
        
        
        public var queryCondition: String?
        
        public var query: MerchandisingSearchQuery?
        
        public var filter: [MerchandisingFilter]?
        

        public enum CodingKeys: String, CodingKey {
            
            case queryCondition = "query_condition"
            
            case query = "query"
            
            case filter = "filter"
            
        }

        public init(filter: [MerchandisingFilter]? = nil, query: MerchandisingSearchQuery? = nil, queryCondition: String? = nil) {
            
            self.queryCondition = queryCondition
            
            self.query = query
            
            self.filter = filter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    queryCondition = try container.decode(String.self, forKey: .queryCondition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode(MerchandisingSearchQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filter = try container.decode([MerchandisingFilter].self, forKey: .filter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(queryCondition, forKey: .queryCondition)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MerchandisingQuery
        Used By: Catalog
    */

    class MerchandisingQuery: Codable {
        
        
        public var queryCondition: String?
        
        public var query: MerchandisingSearchQuery?
        
        public var filter: [MerchandisingFilter]?
        

        public enum CodingKeys: String, CodingKey {
            
            case queryCondition = "query_condition"
            
            case query = "query"
            
            case filter = "filter"
            
        }

        public init(filter: [MerchandisingFilter]? = nil, query: MerchandisingSearchQuery? = nil, queryCondition: String? = nil) {
            
            self.queryCondition = queryCondition
            
            self.query = query
            
            self.filter = filter
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    queryCondition = try container.decode(String.self, forKey: .queryCondition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    query = try container.decode(MerchandisingSearchQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filter = try container.decode([MerchandisingFilter].self, forKey: .filter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(queryCondition, forKey: .queryCondition)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(filter, forKey: .filter)
            
            
        }
        
    }
}


