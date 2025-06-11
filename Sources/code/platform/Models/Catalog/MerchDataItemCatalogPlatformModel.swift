

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MerchDataItem
        Used By: Catalog
    */

    class MerchDataItem: Codable {
        
        
        public var query: MerchSearchQuery?
        
        public var action: [String]?
        
        public var isActive: Bool?
        
        public var merchandisingRuleId: String?
        
        public var ruleName: String?
        
        public var status: String?
        
        public var zoneId: String?
        
        public var applicationId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case action = "action"
            
            case isActive = "is_active"
            
            case merchandisingRuleId = "merchandising_rule_id"
            
            case ruleName = "rule_name"
            
            case status = "status"
            
            case zoneId = "zone_id"
            
            case applicationId = "application_id"
            
        }

        public init(action: [String]? = nil, applicationId: String? = nil, isActive: Bool? = nil, merchandisingRuleId: String? = nil, query: MerchSearchQuery? = nil, ruleName: String? = nil, status: String? = nil, zoneId: String? = nil) {
            
            self.query = query
            
            self.action = action
            
            self.isActive = isActive
            
            self.merchandisingRuleId = merchandisingRuleId
            
            self.ruleName = ruleName
            
            self.status = status
            
            self.zoneId = zoneId
            
            self.applicationId = applicationId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    query = try container.decode(MerchSearchQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode([String].self, forKey: .action)
                
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
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(merchandisingRuleId, forKey: .merchandisingRuleId)
            
            
            
            
            try? container.encodeIfPresent(ruleName, forKey: .ruleName)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MerchDataItem
        Used By: Catalog
    */

    class MerchDataItem: Codable {
        
        
        public var query: MerchSearchQuery?
        
        public var action: [String]?
        
        public var isActive: Bool?
        
        public var merchandisingRuleId: String?
        
        public var ruleName: String?
        
        public var status: String?
        
        public var zoneId: String?
        
        public var applicationId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case query = "query"
            
            case action = "action"
            
            case isActive = "is_active"
            
            case merchandisingRuleId = "merchandising_rule_id"
            
            case ruleName = "rule_name"
            
            case status = "status"
            
            case zoneId = "zone_id"
            
            case applicationId = "application_id"
            
        }

        public init(action: [String]? = nil, applicationId: String? = nil, isActive: Bool? = nil, merchandisingRuleId: String? = nil, query: MerchSearchQuery? = nil, ruleName: String? = nil, status: String? = nil, zoneId: String? = nil) {
            
            self.query = query
            
            self.action = action
            
            self.isActive = isActive
            
            self.merchandisingRuleId = merchandisingRuleId
            
            self.ruleName = ruleName
            
            self.status = status
            
            self.zoneId = zoneId
            
            self.applicationId = applicationId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    query = try container.decode(MerchSearchQuery.self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    action = try container.decode([String].self, forKey: .action)
                
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
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(query, forKey: .query)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(merchandisingRuleId, forKey: .merchandisingRuleId)
            
            
            
            
            try? container.encodeIfPresent(ruleName, forKey: .ruleName)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
        }
        
    }
}


