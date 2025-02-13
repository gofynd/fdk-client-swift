

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: LocationRuleValues
        Used By: Serviceability
    */

    class LocationRuleValues: Codable {
        
        
        public var id: String
        
        public var subType: String?
        
        public var name: String?
        
        public var displayName: String?
        
        public var parentId: [String]?
        
        public var parentIds: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case subType = "sub_type"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case parentId = "parent_id"
            
            case parentIds = "parent_ids"
            
        }

        public init(displayName: String? = nil, id: String, name: String? = nil, parentId: [String]? = nil, parentIds: [String]? = nil, subType: String? = nil) {
            
            self.id = id
            
            self.subType = subType
            
            self.name = name
            
            self.displayName = displayName
            
            self.parentId = parentId
            
            self.parentIds = parentIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    subType = try container.decode(String.self, forKey: .subType)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentId = try container.decode([String].self, forKey: .parentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentIds = try container.decode([String].self, forKey: .parentIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            
            try? container.encodeIfPresent(parentIds, forKey: .parentIds)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: LocationRuleValues
        Used By: Serviceability
    */

    class LocationRuleValues: Codable {
        
        
        public var id: String
        
        public var subType: String?
        
        public var name: String?
        
        public var displayName: String?
        
        public var parentId: [String]?
        
        public var parentIds: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case subType = "sub_type"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case parentId = "parent_id"
            
            case parentIds = "parent_ids"
            
        }

        public init(displayName: String? = nil, id: String, name: String? = nil, parentId: [String]? = nil, parentIds: [String]? = nil, subType: String? = nil) {
            
            self.id = id
            
            self.subType = subType
            
            self.name = name
            
            self.displayName = displayName
            
            self.parentId = parentId
            
            self.parentIds = parentIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                do {
                    subType = try container.decode(String.self, forKey: .subType)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentId = try container.decode([String].self, forKey: .parentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentIds = try container.decode([String].self, forKey: .parentIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
            
            
            try? container.encodeIfPresent(parentIds, forKey: .parentIds)
            
            
        }
        
    }
}


