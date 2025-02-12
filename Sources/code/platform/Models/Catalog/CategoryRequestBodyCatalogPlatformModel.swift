

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CategoryRequestBody
        Used By: Catalog
    */

    class CategoryRequestBody: Codable {
        
        
        public var departments: [Int]
        
        public var hierarchy: [Hierarchy]?
        
        public var isActive: Bool
        
        public var level: Int
        
        public var marketplaces: CategoryMapping?
        
        public var media: Media1?
        
        public var name: String
        
        public var priority: Int?
        
        public var slug: String?
        
        public var synonyms: [String]?
        
        public var tryouts: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case departments = "departments"
            
            case hierarchy = "hierarchy"
            
            case isActive = "is_active"
            
            case level = "level"
            
            case marketplaces = "marketplaces"
            
            case media = "media"
            
            case name = "name"
            
            case priority = "priority"
            
            case slug = "slug"
            
            case synonyms = "synonyms"
            
            case tryouts = "tryouts"
            
        }

        public init(departments: [Int], hierarchy: [Hierarchy]? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media1? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil) {
            
            self.departments = departments
            
            self.hierarchy = hierarchy
            
            self.isActive = isActive
            
            self.level = level
            
            self.marketplaces = marketplaces
            
            self.media = media
            
            self.name = name
            
            self.priority = priority
            
            self.slug = slug
            
            self.synonyms = synonyms
            
            self.tryouts = tryouts
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                departments = try container.decode([Int].self, forKey: .departments)
                
            
            
            
                do {
                    hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(level, forKey: .level)
            
            
            
            
            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CategoryRequestBody
        Used By: Catalog
    */

    class CategoryRequestBody: Codable {
        
        
        public var departments: [Int]
        
        public var hierarchy: [Hierarchy]?
        
        public var isActive: Bool
        
        public var level: Int
        
        public var marketplaces: CategoryMapping?
        
        public var media: Media1?
        
        public var name: String
        
        public var priority: Int?
        
        public var slug: String?
        
        public var synonyms: [String]?
        
        public var tryouts: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case departments = "departments"
            
            case hierarchy = "hierarchy"
            
            case isActive = "is_active"
            
            case level = "level"
            
            case marketplaces = "marketplaces"
            
            case media = "media"
            
            case name = "name"
            
            case priority = "priority"
            
            case slug = "slug"
            
            case synonyms = "synonyms"
            
            case tryouts = "tryouts"
            
        }

        public init(departments: [Int], hierarchy: [Hierarchy]? = nil, isActive: Bool, level: Int, marketplaces: CategoryMapping? = nil, media: Media1? = nil, name: String, priority: Int? = nil, slug: String? = nil, synonyms: [String]? = nil, tryouts: [String]? = nil) {
            
            self.departments = departments
            
            self.hierarchy = hierarchy
            
            self.isActive = isActive
            
            self.level = level
            
            self.marketplaces = marketplaces
            
            self.media = media
            
            self.name = name
            
            self.priority = priority
            
            self.slug = slug
            
            self.synonyms = synonyms
            
            self.tryouts = tryouts
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                departments = try container.decode([Int].self, forKey: .departments)
                
            
            
            
                do {
                    hierarchy = try container.decode([Hierarchy].self, forKey: .hierarchy)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
            
            
            try? container.encodeIfPresent(hierarchy, forKey: .hierarchy)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(level, forKey: .level)
            
            
            
            
            try? container.encodeIfPresent(marketplaces, forKey: .marketplaces)
            
            
            
            
            try? container.encodeIfPresent(media, forKey: .media)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(synonyms, forKey: .synonyms)
            
            
            
            
            try? container.encodeIfPresent(tryouts, forKey: .tryouts)
            
            
        }
        
    }
}


