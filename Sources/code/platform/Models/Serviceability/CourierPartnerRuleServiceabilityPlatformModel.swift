

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
        
        public var manualPriority: [String]?
        
        public var sort: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case cpList = "cp_list"
            
            case name = "name"
            
            case conditions = "conditions"
            
            case manualPriority = "manual_priority"
            
            case sort = "sort"
            
        }

        public init(conditions: CourierPartnerRuleConditions, cpList: [CourierPartnerList]? = nil, isActive: Bool, manualPriority: [String]? = nil, name: String, sort: [String]) {
            
            self.isActive = isActive
            
            self.cpList = cpList
            
            self.name = name
            
            self.conditions = conditions
            
            self.manualPriority = manualPriority
            
            self.sort = sort
            
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
                
            
            
            
                do {
                    manualPriority = try container.decode([String].self, forKey: .manualPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                sort = try container.decode([String].self, forKey: .sort)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(cpList, forKey: .cpList)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
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
        
        public var manualPriority: [String]?
        
        public var sort: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case cpList = "cp_list"
            
            case name = "name"
            
            case conditions = "conditions"
            
            case manualPriority = "manual_priority"
            
            case sort = "sort"
            
        }

        public init(conditions: CourierPartnerRuleConditions, cpList: [CourierPartnerList]? = nil, isActive: Bool, manualPriority: [String]? = nil, name: String, sort: [String]) {
            
            self.isActive = isActive
            
            self.cpList = cpList
            
            self.name = name
            
            self.conditions = conditions
            
            self.manualPriority = manualPriority
            
            self.sort = sort
            
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
                
            
            
            
                do {
                    manualPriority = try container.decode([String].self, forKey: .manualPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                sort = try container.decode([String].self, forKey: .sort)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(cpList, forKey: .cpList)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
        }
        
    }
}


