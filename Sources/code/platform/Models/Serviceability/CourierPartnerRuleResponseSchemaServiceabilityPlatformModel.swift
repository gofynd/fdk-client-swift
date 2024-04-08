

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerRuleResponseSchema
        Used By: Serviceability
    */

    class CourierPartnerRuleResponseSchema: Codable {
        
        
        public var id: String?
        
        public var isActive: Bool
        
        public var cpList: [CourierPartnerList]?
        
        public var name: String
        
        public var conditions: CourierPartnerRuleResponseConditions
        
        public var manualPriority: [String]?
        
        public var sort: [String]
        
        public var type: String
        
        public var applicationId: String?
        
        public var companyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case isActive = "is_active"
            
            case cpList = "cp_list"
            
            case name = "name"
            
            case conditions = "conditions"
            
            case manualPriority = "manual_priority"
            
            case sort = "sort"
            
            case type = "type"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
        }

        public init(applicationId: String? = nil, companyId: Int? = nil, conditions: CourierPartnerRuleResponseConditions, cpList: [CourierPartnerList]? = nil, id: String? = nil, isActive: Bool, manualPriority: [String]? = nil, name: String, sort: [String], type: String) {
            
            self.id = id
            
            self.isActive = isActive
            
            self.cpList = cpList
            
            self.name = name
            
            self.conditions = conditions
            
            self.manualPriority = manualPriority
            
            self.sort = sort
            
            self.type = type
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
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
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    cpList = try container.decode([CourierPartnerList].self, forKey: .cpList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                conditions = try container.decode(CourierPartnerRuleResponseConditions.self, forKey: .conditions)
                
            
            
            
                do {
                    manualPriority = try container.decode([String].self, forKey: .manualPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                sort = try container.decode([String].self, forKey: .sort)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(cpList, forKey: .cpList)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerRuleResponseSchema
        Used By: Serviceability
    */

    class CourierPartnerRuleResponseSchema: Codable {
        
        
        public var id: String?
        
        public var isActive: Bool
        
        public var cpList: [CourierPartnerList]?
        
        public var name: String
        
        public var conditions: CourierPartnerRuleResponseConditions
        
        public var manualPriority: [String]?
        
        public var sort: [String]
        
        public var type: String
        
        public var applicationId: String?
        
        public var companyId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case isActive = "is_active"
            
            case cpList = "cp_list"
            
            case name = "name"
            
            case conditions = "conditions"
            
            case manualPriority = "manual_priority"
            
            case sort = "sort"
            
            case type = "type"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
        }

        public init(applicationId: String? = nil, companyId: Int? = nil, conditions: CourierPartnerRuleResponseConditions, cpList: [CourierPartnerList]? = nil, id: String? = nil, isActive: Bool, manualPriority: [String]? = nil, name: String, sort: [String], type: String) {
            
            self.id = id
            
            self.isActive = isActive
            
            self.cpList = cpList
            
            self.name = name
            
            self.conditions = conditions
            
            self.manualPriority = manualPriority
            
            self.sort = sort
            
            self.type = type
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
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
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    cpList = try container.decode([CourierPartnerList].self, forKey: .cpList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                conditions = try container.decode(CourierPartnerRuleResponseConditions.self, forKey: .conditions)
                
            
            
            
                do {
                    manualPriority = try container.decode([String].self, forKey: .manualPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                sort = try container.decode([String].self, forKey: .sort)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(cpList, forKey: .cpList)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
        }
        
    }
}


