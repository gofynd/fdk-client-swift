

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerRuleResult
        Used By: Serviceability
    */

    class CourierPartnerRuleResult: Codable {
        
        
        public var isActive: Bool
        
        public var applicationId: String
        
        public var companyId: Int
        
        public var conditions: CourierPartnerRuleConditions
        
        public var sort: [String]
        
        public var createdBy: [String: Any]?
        
        public var id: String
        
        public var modifiedBy: [String: Any]?
        
        public var modifiedOn: String?
        
        public var name: String
        
        public var type: String
        
        public var cpList: [CourierPartnerRuleCPListResult]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
            case conditions = "conditions"
            
            case sort = "sort"
            
            case createdBy = "created_by"
            
            case id = "id"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case type = "type"
            
            case cpList = "cp_list"
            
        }

        public init(applicationId: String, companyId: Int, conditions: CourierPartnerRuleConditions, cpList: [CourierPartnerRuleCPListResult]? = nil, createdBy: [String: Any]? = nil, id: String, isActive: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, sort: [String], type: String) {
            
            self.isActive = isActive
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
            self.conditions = conditions
            
            self.sort = sort
            
            self.createdBy = createdBy
            
            self.id = id
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.name = name
            
            self.type = type
            
            self.cpList = cpList
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                conditions = try container.decode(CourierPartnerRuleConditions.self, forKey: .conditions)
                
            
            
            
                sort = try container.decode([String].self, forKey: .sort)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    cpList = try container.decode([CourierPartnerRuleCPListResult].self, forKey: .cpList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(cpList, forKey: .cpList)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerRuleResult
        Used By: Serviceability
    */

    class CourierPartnerRuleResult: Codable {
        
        
        public var isActive: Bool
        
        public var applicationId: String
        
        public var companyId: Int
        
        public var conditions: CourierPartnerRuleConditions
        
        public var sort: [String]
        
        public var createdBy: [String: Any]?
        
        public var id: String
        
        public var modifiedBy: [String: Any]?
        
        public var modifiedOn: String?
        
        public var name: String
        
        public var type: String
        
        public var cpList: [CourierPartnerRuleCPListResult]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
            case conditions = "conditions"
            
            case sort = "sort"
            
            case createdBy = "created_by"
            
            case id = "id"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case type = "type"
            
            case cpList = "cp_list"
            
        }

        public init(applicationId: String, companyId: Int, conditions: CourierPartnerRuleConditions, cpList: [CourierPartnerRuleCPListResult]? = nil, createdBy: [String: Any]? = nil, id: String, isActive: Bool, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, sort: [String], type: String) {
            
            self.isActive = isActive
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
            self.conditions = conditions
            
            self.sort = sort
            
            self.createdBy = createdBy
            
            self.id = id
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.name = name
            
            self.type = type
            
            self.cpList = cpList
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                applicationId = try container.decode(String.self, forKey: .applicationId)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                conditions = try container.decode(CourierPartnerRuleConditions.self, forKey: .conditions)
                
            
            
            
                sort = try container.decode([String].self, forKey: .sort)
                
            
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                do {
                    cpList = try container.decode([CourierPartnerRuleCPListResult].self, forKey: .cpList)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(cpList, forKey: .cpList)
            
            
        }
        
    }
}


