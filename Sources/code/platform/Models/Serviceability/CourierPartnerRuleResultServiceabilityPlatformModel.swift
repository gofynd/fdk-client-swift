

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerRuleResult
        Used By: Serviceability
    */

    class CourierPartnerRuleResult: Codable {
        
        
        public var isActive: Bool?
        
        public var applicationId: String?
        
        public var companyId: Int?
        
        public var manualPriority: [String]?
        
        public var filters: String?
        
        public var conditions: CourierPartnerRuleConditions?
        
        public var sort: [String]?
        
        public var createdBy: CreatedBy?
        
        public var id: String?
        
        public var modifiedBy: ModifiedBy?
        
        public var modifiedOn: String?
        
        public var name: String?
        
        public var type: String?
        
        public var cpList: [CourierPartnerRuleCPListResult]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
            case manualPriority = "manual_priority"
            
            case filters = "filters"
            
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

        public init(applicationId: String? = nil, companyId: Int? = nil, conditions: CourierPartnerRuleConditions? = nil, cpList: [CourierPartnerRuleCPListResult]? = nil, createdBy: CreatedBy? = nil, filters: String? = nil, id: String? = nil, isActive: Bool? = nil, manualPriority: [String]? = nil, modifiedBy: ModifiedBy? = nil, modifiedOn: String? = nil, name: String? = nil, sort: [String]? = nil, type: String? = nil) {
            
            self.isActive = isActive
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
            self.manualPriority = manualPriority
            
            self.filters = filters
            
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
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manualPriority = try container.decode([String].self, forKey: .manualPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode(String.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    conditions = try container.decode(CourierPartnerRuleConditions.self, forKey: .conditions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([String].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(ModifiedBy.self, forKey: .modifiedBy)
                
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
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
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
        
        
        public var isActive: Bool?
        
        public var applicationId: String?
        
        public var companyId: Int?
        
        public var manualPriority: [String]?
        
        public var filters: String?
        
        public var conditions: CourierPartnerRuleConditions?
        
        public var sort: [String]?
        
        public var createdBy: CreatedBy?
        
        public var id: String?
        
        public var modifiedBy: ModifiedBy?
        
        public var modifiedOn: String?
        
        public var name: String?
        
        public var type: String?
        
        public var cpList: [CourierPartnerRuleCPListResult]?
        

        public enum CodingKeys: String, CodingKey {
            
            case isActive = "is_active"
            
            case applicationId = "application_id"
            
            case companyId = "company_id"
            
            case manualPriority = "manual_priority"
            
            case filters = "filters"
            
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

        public init(applicationId: String? = nil, companyId: Int? = nil, conditions: CourierPartnerRuleConditions? = nil, cpList: [CourierPartnerRuleCPListResult]? = nil, createdBy: CreatedBy? = nil, filters: String? = nil, id: String? = nil, isActive: Bool? = nil, manualPriority: [String]? = nil, modifiedBy: ModifiedBy? = nil, modifiedOn: String? = nil, name: String? = nil, sort: [String]? = nil, type: String? = nil) {
            
            self.isActive = isActive
            
            self.applicationId = applicationId
            
            self.companyId = companyId
            
            self.manualPriority = manualPriority
            
            self.filters = filters
            
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
            
            
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manualPriority = try container.decode([String].self, forKey: .manualPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode(String.self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    conditions = try container.decode(CourierPartnerRuleConditions.self, forKey: .conditions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([String].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode(CreatedBy.self, forKey: .createdBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    modifiedBy = try container.decode(ModifiedBy.self, forKey: .modifiedBy)
                
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
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
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


