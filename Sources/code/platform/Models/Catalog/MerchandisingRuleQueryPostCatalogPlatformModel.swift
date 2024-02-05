

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MerchandisingRuleQueryPost
        Used By: Catalog
    */

    class MerchandisingRuleQueryPost: Codable {
        
        
        public var queryCondition: String?
        
        public var query: MerchandisingRuleQuery?
        
        public var actions: [String]?
        
        public var zones: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case queryCondition = "query_condition"
            
            case query = "query"
            
            case actions = "actions"
            
            case zones = "zones"
            
        }

        public init(actions: [String]? = nil, query: MerchandisingRuleQuery? = nil, queryCondition: String? = nil, zones: [String]? = nil) {
            
            self.queryCondition = queryCondition
            
            self.query = query
            
            self.actions = actions
            
            self.zones = zones
            
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
                    query = try container.decode(MerchandisingRuleQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actions = try container.decode([String].self, forKey: .actions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zones = try container.decode([String].self, forKey: .zones)
                
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
            
            
            
            
            try? container.encodeIfPresent(actions, forKey: .actions)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MerchandisingRuleQueryPost
        Used By: Catalog
    */

    class MerchandisingRuleQueryPost: Codable {
        
        
        public var queryCondition: String?
        
        public var query: MerchandisingRuleQuery?
        
        public var actions: [String]?
        
        public var zones: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case queryCondition = "query_condition"
            
            case query = "query"
            
            case actions = "actions"
            
            case zones = "zones"
            
        }

        public init(actions: [String]? = nil, query: MerchandisingRuleQuery? = nil, queryCondition: String? = nil, zones: [String]? = nil) {
            
            self.queryCondition = queryCondition
            
            self.query = query
            
            self.actions = actions
            
            self.zones = zones
            
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
                    query = try container.decode(MerchandisingRuleQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actions = try container.decode([String].self, forKey: .actions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zones = try container.decode([String].self, forKey: .zones)
                
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
            
            
            
            
            try? container.encodeIfPresent(actions, forKey: .actions)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
}


