

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StoreRuleDataSchema
        Used By: Serviceability
    */

    class StoreRuleDataSchema: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var companyId: Int?
        
        public var applicationId: String?
        
        public var typeBasedPriority: [String]?
        
        public var tagBasedPriority: [String]?
        
        public var storePriority: [StorePrioritySchema]?
        
        public var sort: [String]?
        
        public var conditions: StoreRuleConditionSchema?
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case typeBasedPriority = "type_based_priority"
            
            case tagBasedPriority = "tag_based_priority"
            
            case storePriority = "store_priority"
            
            case sort = "sort"
            
            case conditions = "conditions"
            
            case isActive = "is_active"
            
        }

        public init(applicationId: String? = nil, companyId: Int? = nil, conditions: StoreRuleConditionSchema? = nil, id: String? = nil, isActive: Bool? = nil, name: String? = nil, sort: [String]? = nil, storePriority: [StorePrioritySchema]? = nil, tagBasedPriority: [String]? = nil, typeBasedPriority: [String]? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.typeBasedPriority = typeBasedPriority
            
            self.tagBasedPriority = tagBasedPriority
            
            self.storePriority = storePriority
            
            self.sort = sort
            
            self.conditions = conditions
            
            self.isActive = isActive
            
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    typeBasedPriority = try container.decode([String].self, forKey: .typeBasedPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tagBasedPriority = try container.decode([String].self, forKey: .tagBasedPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storePriority = try container.decode([StorePrioritySchema].self, forKey: .storePriority)
                
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
                    conditions = try container.decode(StoreRuleConditionSchema.self, forKey: .conditions)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(typeBasedPriority, forKey: .typeBasedPriority)
            
            
            
            
            try? container.encodeIfPresent(tagBasedPriority, forKey: .tagBasedPriority)
            
            
            
            
            try? container.encodeIfPresent(storePriority, forKey: .storePriority)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StoreRuleDataSchema
        Used By: Serviceability
    */

    class StoreRuleDataSchema: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var companyId: Int?
        
        public var applicationId: String?
        
        public var typeBasedPriority: [String]?
        
        public var tagBasedPriority: [String]?
        
        public var storePriority: [StorePrioritySchema]?
        
        public var sort: [String]?
        
        public var conditions: StoreRuleConditionSchema?
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case companyId = "company_id"
            
            case applicationId = "application_id"
            
            case typeBasedPriority = "type_based_priority"
            
            case tagBasedPriority = "tag_based_priority"
            
            case storePriority = "store_priority"
            
            case sort = "sort"
            
            case conditions = "conditions"
            
            case isActive = "is_active"
            
        }

        public init(applicationId: String? = nil, companyId: Int? = nil, conditions: StoreRuleConditionSchema? = nil, id: String? = nil, isActive: Bool? = nil, name: String? = nil, sort: [String]? = nil, storePriority: [StorePrioritySchema]? = nil, tagBasedPriority: [String]? = nil, typeBasedPriority: [String]? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.companyId = companyId
            
            self.applicationId = applicationId
            
            self.typeBasedPriority = typeBasedPriority
            
            self.tagBasedPriority = tagBasedPriority
            
            self.storePriority = storePriority
            
            self.sort = sort
            
            self.conditions = conditions
            
            self.isActive = isActive
            
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
                    name = try container.decode(String.self, forKey: .name)
                
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
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    typeBasedPriority = try container.decode([String].self, forKey: .typeBasedPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tagBasedPriority = try container.decode([String].self, forKey: .tagBasedPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storePriority = try container.decode([StorePrioritySchema].self, forKey: .storePriority)
                
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
                    conditions = try container.decode(StoreRuleConditionSchema.self, forKey: .conditions)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(typeBasedPriority, forKey: .typeBasedPriority)
            
            
            
            
            try? container.encodeIfPresent(tagBasedPriority, forKey: .tagBasedPriority)
            
            
            
            
            try? container.encodeIfPresent(storePriority, forKey: .storePriority)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}


