

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: Category
        Used By: Catalog
    */

    class Category: Codable {
        
        
        public var createdBy: [String: Any]?
        
        public var createdOn: String?
        
        public var departments: [Int]
        
        public var hierarchy: [Hierarchy]?
        
        public var id: String?
        
        public var isActive: Bool
        
        public var level: Int
        
        public var marketplaces: CategoryMapping?
        
        public var media: Media1?
        
        public var modifiedBy: [String: Any]?
        
        public var modifiedOn: String?
        
        public var name: String
        
        public var priority: Int?
        
        public var slug: String?
        
        public var synonyms: [String]?
        
        public var tryouts: [String]?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case departments = "departments"
            
            case hierarchy = "hierarchy"
            
            case id = "id"
            
            case isActive = "is_active"
            
            case level = "level"
            
            case marketplaces = "marketplaces"
            
            case media = "media"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case priority = "priority"
            
            case slug = "slug"
            
            case synonyms = "synonyms"
            
            case tryouts = "tryouts"
            
            case uid = "uid"
            
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [Int], hierarchy: [Hierarchy]? = nil, id: String? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media1? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil, uid: Int? = nil) {
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.departments = departments
            
            self.hierarchy = hierarchy
            
            self.id = id
            
            self.isActive = isActive
            
            self.level = level
            
            self.marketplaces = marketplaces
            
            self.media = media
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.name = name
            
            self.priority = priority
            
            self.slug = slug
            
            self.synonyms = synonyms
            
            self.tryouts = tryouts
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
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
                    hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)
                
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
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                level = try container.decode(Int.self, forKey: .level)
                
            
            
            
                do {
                    marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)
                
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
                
            
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                    tryouts = try container.decode([String].self, forKey: .tryouts)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(level, forKey: .level)
            
            
            
            
            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: Category
        Used By: Catalog
    */

    class Category: Codable {
        
        
        public var createdBy: [String: Any]?
        
        public var createdOn: String?
        
        public var departments: [Int]
        
        public var hierarchy: [Hierarchy]?
        
        public var id: String?
        
        public var isActive: Bool
        
        public var level: Int
        
        public var marketplaces: CategoryMapping?
        
        public var media: Media1?
        
        public var modifiedBy: [String: Any]?
        
        public var modifiedOn: String?
        
        public var name: String
        
        public var priority: Int?
        
        public var slug: String?
        
        public var synonyms: [String]?
        
        public var tryouts: [String]?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case createdBy = "created_by"
            
            case createdOn = "created_on"
            
            case departments = "departments"
            
            case hierarchy = "hierarchy"
            
            case id = "id"
            
            case isActive = "is_active"
            
            case level = "level"
            
            case marketplaces = "marketplaces"
            
            case media = "media"
            
            case modifiedBy = "modified_by"
            
            case modifiedOn = "modified_on"
            
            case name = "name"
            
            case priority = "priority"
            
            case slug = "slug"
            
            case synonyms = "synonyms"
            
            case tryouts = "tryouts"
            
            case uid = "uid"
            
        }

        public init(createdBy: [String: Any]? = nil, createdOn: String? = nil, departments: [Int], hierarchy: [Hierarchy]? = nil, id: String? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media1? = nil, modifiedBy: [String: Any]? = nil, modifiedOn: String? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil, uid: Int? = nil) {
            
            self.createdBy = createdBy
            
            self.createdOn = createdOn
            
            self.departments = departments
            
            self.hierarchy = hierarchy
            
            self.id = id
            
            self.isActive = isActive
            
            self.level = level
            
            self.marketplaces = marketplaces
            
            self.media = media
            
            self.modifiedBy = modifiedBy
            
            self.modifiedOn = modifiedOn
            
            self.name = name
            
            self.priority = priority
            
            self.slug = slug
            
            self.synonyms = synonyms
            
            self.tryouts = tryouts
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    createdBy = try container.decode([String: Any].self, forKey: .createdBy)
                
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
                    hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)
                
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
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                level = try container.decode(Int.self, forKey: .level)
                
            
            
            
                do {
                    marketplaces = try container.decode(CategoryMapping.self, forKey: .marketplaces)
                
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
                
            
            
            
                do {
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
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
                    tryouts = try container.decode([String].self, forKey: .tryouts)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(createdBy, forKey: .createdBy)
            
            
            
            
            try? container.encodeIfPresent(createdOn, forKey: .createdOn)
            
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(level, forKey: .level)
            
            
            
            
            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)
            
            
            
            
            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}


