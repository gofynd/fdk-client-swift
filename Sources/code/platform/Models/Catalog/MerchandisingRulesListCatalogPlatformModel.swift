

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MerchandisingRulesList
        Used By: Catalog
    */

    class MerchandisingRulesList: Codable {
        
        
        public var ruleId: String?
        
        public var query: MerchandisingRuleQuery?
        
        public var actions: [String]?
        
        public var zones: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleId = "rule_id"
            
            case query = "query"
            
            case actions = "actions"
            
            case zones = "zones"
            
        }

        public init(actions: [String]? = nil, query: MerchandisingRuleQuery? = nil, ruleId: String? = nil, zones: [String]? = nil) {
            
            self.ruleId = ruleId
            
            self.query = query
            
            self.actions = actions
            
            self.zones = zones
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ruleId = try container.decode(String.self, forKey: .ruleId)
                
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
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(actions, forKey: .actions)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MerchandisingRulesList
        Used By: Catalog
    */

    class MerchandisingRulesList: Codable {
        
        
        public var ruleId: String?
        
        public var query: MerchandisingRuleQuery?
        
        public var actions: [String]?
        
        public var zones: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleId = "rule_id"
            
            case query = "query"
            
            case actions = "actions"
            
            case zones = "zones"
            
        }

        public init(actions: [String]? = nil, query: MerchandisingRuleQuery? = nil, ruleId: String? = nil, zones: [String]? = nil) {
            
            self.ruleId = ruleId
            
            self.query = query
            
            self.actions = actions
            
            self.zones = zones
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ruleId = try container.decode(String.self, forKey: .ruleId)
                
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
            
            
            
            try? container.encodeIfPresent(ruleId, forKey: .ruleId)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(actions, forKey: .actions)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
}


