

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: SearchResponseSchema
        Used By: Catalog
    */

    class SearchResponseSchema: Codable {
        
        
        public var id: String?
        
        public var query: MerchandisingQuery?
        
        public var isActive: Bool?
        
        public var merchandisingRuleId: String?
        
        public var ruleName: String?
        
        public var applicationId: String?
        
        public var status: String?
        
        public var zoneId: String?
        
        public var schedule: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case query = "query"
            
            case isActive = "is_active"
            
            case merchandisingRuleId = "merchandising_rule_id"
            
            case ruleName = "rule_name"
            
            case applicationId = "application_id"
            
            case status = "status"
            
            case zoneId = "zone_id"
            
            case schedule = "_schedule"
            
        }

        public init(applicationId: String? = nil, isActive: Bool? = nil, merchandisingRuleId: String? = nil, query: MerchandisingQuery? = nil, ruleName: String? = nil, status: String? = nil, zoneId: String? = nil, id: String? = nil, schedule: [String: Any]? = nil) {
            
            self.id = id
            
            self.query = query
            
            self.isActive = isActive
            
            self.merchandisingRuleId = merchandisingRuleId
            
            self.ruleName = ruleName
            
            self.applicationId = applicationId
            
            self.status = status
            
            self.zoneId = zoneId
            
            self.schedule = schedule
            
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
                    query = try container.decode(MerchandisingQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchandisingRuleId = try container.decode(String.self, forKey: .merchandisingRuleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ruleName = try container.decode(String.self, forKey: .ruleName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zoneId = try container.decode(String.self, forKey: .zoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schedule = try container.decode([String: Any].self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(merchandisingRuleId, forKey: .merchandisingRuleId)
            
            
            
            
            try? container.encodeIfPresent(ruleName, forKey: .ruleName)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: SearchResponseSchema
        Used By: Catalog
    */

    class SearchResponseSchema: Codable {
        
        
        public var id: String?
        
        public var query: MerchandisingQuery?
        
        public var isActive: Bool?
        
        public var merchandisingRuleId: String?
        
        public var ruleName: String?
        
        public var applicationId: String?
        
        public var status: String?
        
        public var zoneId: String?
        
        public var schedule: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case query = "query"
            
            case isActive = "is_active"
            
            case merchandisingRuleId = "merchandising_rule_id"
            
            case ruleName = "rule_name"
            
            case applicationId = "application_id"
            
            case status = "status"
            
            case zoneId = "zone_id"
            
            case schedule = "_schedule"
            
        }

        public init(applicationId: String? = nil, isActive: Bool? = nil, merchandisingRuleId: String? = nil, query: MerchandisingQuery? = nil, ruleName: String? = nil, status: String? = nil, zoneId: String? = nil, id: String? = nil, schedule: [String: Any]? = nil) {
            
            self.id = id
            
            self.query = query
            
            self.isActive = isActive
            
            self.merchandisingRuleId = merchandisingRuleId
            
            self.ruleName = ruleName
            
            self.applicationId = applicationId
            
            self.status = status
            
            self.zoneId = zoneId
            
            self.schedule = schedule
            
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
                    query = try container.decode(MerchandisingQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    merchandisingRuleId = try container.decode(String.self, forKey: .merchandisingRuleId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    ruleName = try container.decode(String.self, forKey: .ruleName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zoneId = try container.decode(String.self, forKey: .zoneId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    schedule = try container.decode([String: Any].self, forKey: .schedule)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(merchandisingRuleId, forKey: .merchandisingRuleId)
            
            
            
            
            try? container.encodeIfPresent(ruleName, forKey: .ruleName)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
        }
        
    }
}


