

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: GetLocality
        Used By: Serviceability
    */

    class GetLocality: Codable {
        
        
        public var meta: [String: Any]?
        
        public var parentUid: String?
        
        public var id: String?
        
        public var name: String?
        
        public var displayName: String?
        
        public var code: String?
        
        public var customMeta: [String: Any]?
        
        public var parentIds: [String]?
        
        public var localities: [LocalityParent]?
        
        public var type: String?
        
        public var parents: LocalityParents?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case parentUid = "parent_uid"
            
            case id = "id"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case code = "code"
            
            case customMeta = "custom_meta"
            
            case parentIds = "parent_ids"
            
            case localities = "localities"
            
            case type = "type"
            
            case parents = "parents"
            
        }

        public init(code: String? = nil, customMeta: [String: Any]? = nil, displayName: String? = nil, id: String? = nil, localities: [LocalityParent]? = nil, meta: [String: Any]? = nil, name: String? = nil, parents: LocalityParents? = nil, parentIds: [String]? = nil, parentUid: String? = nil, type: String? = nil) {
            
            self.meta = meta
            
            self.parentUid = parentUid
            
            self.id = id
            
            self.name = name
            
            self.displayName = displayName
            
            self.code = code
            
            self.customMeta = customMeta
            
            self.parentIds = parentIds
            
            self.localities = localities
            
            self.type = type
            
            self.parents = parents
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentUid = try container.decode(String.self, forKey: .parentUid)
                
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
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customMeta = try container.decode([String: Any].self, forKey: .customMeta)
                
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
                
            
            
                do {
                    localities = try container.decode([LocalityParent].self, forKey: .localities)
                
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
                    parents = try container.decode(LocalityParents.self, forKey: .parents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(parentUid, forKey: .parentUid)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            
            try? container.encodeIfPresent(parentIds, forKey: .parentIds)
            
            
            
            
            try? container.encodeIfPresent(localities, forKey: .localities)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(parents, forKey: .parents)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: GetLocality
        Used By: Serviceability
    */

    class GetLocality: Codable {
        
        
        public var meta: [String: Any]?
        
        public var parentUid: String?
        
        public var id: String?
        
        public var name: String?
        
        public var displayName: String?
        
        public var code: String?
        
        public var customMeta: [String: Any]?
        
        public var parentIds: [String]?
        
        public var localities: [LocalityParent]?
        
        public var type: String?
        
        public var parents: LocalityParents?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case parentUid = "parent_uid"
            
            case id = "id"
            
            case name = "name"
            
            case displayName = "display_name"
            
            case code = "code"
            
            case customMeta = "custom_meta"
            
            case parentIds = "parent_ids"
            
            case localities = "localities"
            
            case type = "type"
            
            case parents = "parents"
            
        }

        public init(code: String? = nil, customMeta: [String: Any]? = nil, displayName: String? = nil, id: String? = nil, localities: [LocalityParent]? = nil, meta: [String: Any]? = nil, name: String? = nil, parents: LocalityParents? = nil, parentIds: [String]? = nil, parentUid: String? = nil, type: String? = nil) {
            
            self.meta = meta
            
            self.parentUid = parentUid
            
            self.id = id
            
            self.name = name
            
            self.displayName = displayName
            
            self.code = code
            
            self.customMeta = customMeta
            
            self.parentIds = parentIds
            
            self.localities = localities
            
            self.type = type
            
            self.parents = parents
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    parentUid = try container.decode(String.self, forKey: .parentUid)
                
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
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customMeta = try container.decode([String: Any].self, forKey: .customMeta)
                
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
                
            
            
                do {
                    localities = try container.decode([LocalityParent].self, forKey: .localities)
                
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
                    parents = try container.decode(LocalityParents.self, forKey: .parents)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(parentUid, forKey: .parentUid)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
            
            
            
            
            try? container.encodeIfPresent(parentIds, forKey: .parentIds)
            
            
            
            
            try? container.encodeIfPresent(localities, forKey: .localities)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(parents, forKey: .parents)
            
            
        }
        
    }
}


