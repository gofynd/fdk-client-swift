

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Category
        Used By: Catalog
    */

    class Category: Codable {
        
        
        public var marketplaces: CategoryMapping?
        
        public var synonyms: [String]?
        
        public var createdBy: [String: Any]?
        
        public var id: String?
        
        public var media: Media1?
        
        public var level: Int
        
        public var modifiedOn: String?
        
        public var tryouts: [String]?
        
        public var isActive: Bool
        
        public var modifiedBy: [String: Any]?
        
        public var createdOn: String?
        
        public var departments: [Int]
        
        public var slug: String?
        
        public var hierarchy: [Hierarchy]?
        
        public var uid: Int?
        
        public var priority: Int?
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case marketplaces = "marketplaces"
            
            case synonyms = "synonyms"
            
            case createdBy = "created_by"
            
            case id = "id"
            
            case media = "media"
            
            case level = "level"
            
            case modifiedOn = "modified_on"
            
            case tryouts = "tryouts"
            
            case isActive = "is_active"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case departments = "departments"
            
            case slug = "slug"
            
            case hierarchy = "hierarchy"
            
            case uid = "uid"
            
            case priority = "priority"
            
            case name = "name"
            
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [Int], hierarchy: [Hierarchy]? = nil, id: String? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media1? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil, uid: Int? = nil) {
            
            self.marketplaces = marketplaces
            
            self.synonyms = synonyms
            
            self.createdBy = createdBy
            
            self.id = id
            
            self.media = media
            
            self.level = level
            
            self.modifiedOn = modifiedOn
            
            self.tryouts = tryouts
            
            self.isActive = isActive
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.departments = departments
            
            self.slug = slug
            
            self.hierarchy = hierarchy
            
            self.uid = uid
            
            self.priority = priority
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
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
                    media = try container.decode(Media1.self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                level = try container.decode(Int.self, forKey: .level)
                
            
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tryouts = try container.decode([String].self, forKey: .tryouts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                departments = try container.decode([Int].self, forKey: .departments)
                
            
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(level, forKey: .level)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Category
        Used By: Catalog
    */

    class Category: Codable {
        
        
        public var marketplaces: CategoryMapping?
        
        public var synonyms: [String]?
        
        public var createdBy: [String: Any]?
        
        public var id: String?
        
        public var media: Media1?
        
        public var level: Int
        
        public var modifiedOn: String?
        
        public var tryouts: [String]?
        
        public var isActive: Bool
        
        public var modifiedBy: [String: Any]?
        
        public var createdOn: String?
        
        public var departments: [Int]
        
        public var slug: String?
        
        public var hierarchy: [Hierarchy]?
        
        public var uid: Int?
        
        public var priority: Int?
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case marketplaces = "marketplaces"
            
            case synonyms = "synonyms"
            
            case createdBy = "created_by"
            
            case id = "id"
            
            case media = "media"
            
            case level = "level"
            
            case modifiedOn = "modified_on"
            
            case tryouts = "tryouts"
            
            case isActive = "is_active"
            
            case modifiedBy = "modified_by"
            
            case createdOn = "created_on"
            
            case departments = "departments"
            
            case slug = "slug"
            
            case hierarchy = "hierarchy"
            
            case uid = "uid"
            
            case priority = "priority"
            
            case name = "name"
            
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [Int], hierarchy: [Hierarchy]? = nil, id: String? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media1? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil, uid: Int? = nil) {
            
            self.marketplaces = marketplaces
            
            self.synonyms = synonyms
            
            self.createdBy = createdBy
            
            self.id = id
            
            self.media = media
            
            self.level = level
            
            self.modifiedOn = modifiedOn
            
            self.tryouts = tryouts
            
            self.isActive = isActive
            
            self.modifiedBy = modifiedBy
            
            self.createdOn = createdOn
            
            self.departments = departments
            
            self.slug = slug
            
            self.hierarchy = hierarchy
            
            self.uid = uid
            
            self.priority = priority
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    synonyms = try container.decode([String].self, forKey: .synonyms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
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
                    media = try container.decode(Media1.self, forKey: .media)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                level = try container.decode(Int.self, forKey: .level)
                
            
            
            
                do {
                    modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tryouts = try container.decode([String].self, forKey: .tryouts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    modifiedBy = try container.decode([String: Any].self, forKey: .modifiedBy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                departments = try container.decode([Int].self, forKey: .departments)
                
            
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(level, forKey: .level)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}


