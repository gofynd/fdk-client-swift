

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerRule
        Used By: Serviceability
    */

    class CourierPartnerRule: Codable {
        
        
        public var isActive: Bool
        
        public var cpList: [CourierPartnerList]?
        
        public var name: String
        
        public var conditions: CourierPartnerRuleConditions
        
        public var sort: [String]
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case cpList = "cp_list"
            
            case name = "name"
            
            case conditions = "conditions"
            
            case sort = "sort"
            
            case type = "type"
            
        }

        public init(conditions: CourierPartnerRuleConditions, cpList: [CourierPartnerList]? = nil, isActive: Bool, name: String, sort: [String], type: String? = nil) {
            
            self.isActive = isActive
            
            self.cpList = cpList
            
            self.name = name
            
            self.conditions = conditions
            
            self.sort = sort
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    cpList = try container.decode([CourierPartnerList].self, forKey: .cpList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                conditions = try container.decode(CourierPartnerRuleConditions.self, forKey: .conditions)
                
            
            
            
                sort = try container.decode([String].self, forKey: .sort)
                
            
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(cpList, forKey: .cpList)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerRule
        Used By: Serviceability
    */

    class CourierPartnerRule: Codable {
        
        
        public var isActive: Bool
        
        public var cpList: [CourierPartnerList]?
        
        public var name: String
        
        public var conditions: CourierPartnerRuleConditions
        
        public var sort: [String]
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case cpList = "cp_list"
            
            case name = "name"
            
            case conditions = "conditions"
            
            case sort = "sort"
            
            case type = "type"
            
        }

        public init(conditions: CourierPartnerRuleConditions, cpList: [CourierPartnerList]? = nil, isActive: Bool, name: String, sort: [String], type: String? = nil) {
            
            self.isActive = isActive
            
            self.cpList = cpList
            
            self.name = name
            
            self.conditions = conditions
            
            self.sort = sort
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    cpList = try container.decode([CourierPartnerList].self, forKey: .cpList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                conditions = try container.decode(CourierPartnerRuleConditions.self, forKey: .conditions)
                
            
            
            
                sort = try container.decode([String].self, forKey: .sort)
                
            
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(cpList, forKey: .cpList)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


