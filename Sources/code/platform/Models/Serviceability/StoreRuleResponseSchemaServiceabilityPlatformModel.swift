

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StoreRuleResponseSchema
        Used By: Serviceability
    */

    class StoreRuleResponseSchema: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var type: String?
        
        public var typeBasedPriority: [String]?
        
        public var tagBasedPriority: [String]?
        
        public var storePriority: [StorePrioritySchema]?
        
        public var sort: [String]?
        
        public var manualPriority: [String]?
        
        public var conditions: StoreRuleConditionSchema?
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case type = "type"
            
            case typeBasedPriority = "type_based_priority"
            
            case tagBasedPriority = "tag_based_priority"
            
            case storePriority = "store_priority"
            
            case sort = "sort"
            
            case manualPriority = "manual_priority"
            
            case conditions = "conditions"
            
            case isActive = "is_active"
            
        }

        public init(conditions: StoreRuleConditionSchema? = nil, id: String? = nil, isActive: Bool? = nil, manualPriority: [String]? = nil, name: String? = nil, sort: [String]? = nil, storePriority: [StorePrioritySchema]? = nil, tagBasedPriority: [String]? = nil, type: String? = nil, typeBasedPriority: [String]? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.type = type
            
            self.typeBasedPriority = typeBasedPriority
            
            self.tagBasedPriority = tagBasedPriority
            
            self.storePriority = storePriority
            
            self.sort = sort
            
            self.manualPriority = manualPriority
            
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                    manualPriority = try container.decode([String].self, forKey: .manualPriority)
                
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
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(typeBasedPriority, forKey: .typeBasedPriority)
            
            
            
            
            try? container.encodeIfPresent(tagBasedPriority, forKey: .tagBasedPriority)
            
            
            
            
            try? container.encodeIfPresent(storePriority, forKey: .storePriority)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StoreRuleResponseSchema
        Used By: Serviceability
    */

    class StoreRuleResponseSchema: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var type: String?
        
        public var typeBasedPriority: [String]?
        
        public var tagBasedPriority: [String]?
        
        public var storePriority: [StorePrioritySchema]?
        
        public var sort: [String]?
        
        public var manualPriority: [String]?
        
        public var conditions: StoreRuleConditionSchema?
        
        public var isActive: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case type = "type"
            
            case typeBasedPriority = "type_based_priority"
            
            case tagBasedPriority = "tag_based_priority"
            
            case storePriority = "store_priority"
            
            case sort = "sort"
            
            case manualPriority = "manual_priority"
            
            case conditions = "conditions"
            
            case isActive = "is_active"
            
        }

        public init(conditions: StoreRuleConditionSchema? = nil, id: String? = nil, isActive: Bool? = nil, manualPriority: [String]? = nil, name: String? = nil, sort: [String]? = nil, storePriority: [StorePrioritySchema]? = nil, tagBasedPriority: [String]? = nil, type: String? = nil, typeBasedPriority: [String]? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.type = type
            
            self.typeBasedPriority = typeBasedPriority
            
            self.tagBasedPriority = tagBasedPriority
            
            self.storePriority = storePriority
            
            self.sort = sort
            
            self.manualPriority = manualPriority
            
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
                    type = try container.decode(String.self, forKey: .type)
                
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
                    manualPriority = try container.decode([String].self, forKey: .manualPriority)
                
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
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(typeBasedPriority, forKey: .typeBasedPriority)
            
            
            
            
            try? container.encodeIfPresent(tagBasedPriority, forKey: .tagBasedPriority)
            
            
            
            
            try? container.encodeIfPresent(storePriority, forKey: .storePriority)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}


