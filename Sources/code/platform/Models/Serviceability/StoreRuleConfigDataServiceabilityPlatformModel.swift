

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StoreRuleConfigData
        Used By: Serviceability
    */

    class StoreRuleConfigData: Codable {
        
        
        public var ruleIds: [String]?
        
        public var typeBasedPriority: [String]?
        
        public var tagBasedPriority: [String]?
        
        public var storePriority: [StorePrioritySchema]?
        
        public var sort: [String]?
        
        public var manualPriority: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleIds = "rule_ids"
            
            case typeBasedPriority = "type_based_priority"
            
            case tagBasedPriority = "tag_based_priority"
            
            case storePriority = "store_priority"
            
            case sort = "sort"
            
            case manualPriority = "manual_priority"
            
        }

        public init(manualPriority: [String]? = nil, ruleIds: [String]? = nil, sort: [String]? = nil, storePriority: [StorePrioritySchema]? = nil, tagBasedPriority: [String]? = nil, typeBasedPriority: [String]? = nil) {
            
            self.ruleIds = ruleIds
            
            self.typeBasedPriority = typeBasedPriority
            
            self.tagBasedPriority = tagBasedPriority
            
            self.storePriority = storePriority
            
            self.sort = sort
            
            self.manualPriority = manualPriority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ruleIds = try container.decode([String].self, forKey: .ruleIds)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleIds, forKey: .ruleIds)
            
            
            
            
            try? container.encodeIfPresent(typeBasedPriority, forKey: .typeBasedPriority)
            
            
            
            
            try? container.encodeIfPresent(tagBasedPriority, forKey: .tagBasedPriority)
            
            
            
            
            try? container.encodeIfPresent(storePriority, forKey: .storePriority)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StoreRuleConfigData
        Used By: Serviceability
    */

    class StoreRuleConfigData: Codable {
        
        
        public var ruleIds: [String]?
        
        public var typeBasedPriority: [String]?
        
        public var tagBasedPriority: [String]?
        
        public var storePriority: [StorePrioritySchema]?
        
        public var sort: [String]?
        
        public var manualPriority: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleIds = "rule_ids"
            
            case typeBasedPriority = "type_based_priority"
            
            case tagBasedPriority = "tag_based_priority"
            
            case storePriority = "store_priority"
            
            case sort = "sort"
            
            case manualPriority = "manual_priority"
            
        }

        public init(manualPriority: [String]? = nil, ruleIds: [String]? = nil, sort: [String]? = nil, storePriority: [StorePrioritySchema]? = nil, tagBasedPriority: [String]? = nil, typeBasedPriority: [String]? = nil) {
            
            self.ruleIds = ruleIds
            
            self.typeBasedPriority = typeBasedPriority
            
            self.tagBasedPriority = tagBasedPriority
            
            self.storePriority = storePriority
            
            self.sort = sort
            
            self.manualPriority = manualPriority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ruleIds = try container.decode([String].self, forKey: .ruleIds)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleIds, forKey: .ruleIds)
            
            
            
            
            try? container.encodeIfPresent(typeBasedPriority, forKey: .typeBasedPriority)
            
            
            
            
            try? container.encodeIfPresent(tagBasedPriority, forKey: .tagBasedPriority)
            
            
            
            
            try? container.encodeIfPresent(storePriority, forKey: .storePriority)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
        }
        
    }
}


