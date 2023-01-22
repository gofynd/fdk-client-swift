

import Foundation
public extension PlatformClient {
    /*
        Model: TemplateDetails
        Used By: Catalog
    */

    class TemplateDetails: Codable {
        
        
        public var isExpirable: Bool
        
        public var description: String?
        
        public var categories: [String]?
        
        public var logo: String?
        
        public var slug: String
        
        public var name: String?
        
        public var isActive: Bool?
        
        public var departments: [String]?
        
        public var attributes: [String]?
        
        public var id: String?
        
        public var tag: String?
        
        public var isArchived: Bool?
        
        public var isPhysical: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case isExpirable = "is_expirable"
            
            case description = "description"
            
            case categories = "categories"
            
            case logo = "logo"
            
            case slug = "slug"
            
            case name = "name"
            
            case isActive = "is_active"
            
            case departments = "departments"
            
            case attributes = "attributes"
            
            case id = "id"
            
            case tag = "tag"
            
            case isArchived = "is_archived"
            
            case isPhysical = "is_physical"
            
        }

        public init(attributes: [String]? = nil, categories: [String]? = nil, departments: [String]? = nil, description: String? = nil, id: String? = nil, isActive: Bool? = nil, isArchived: Bool? = nil, isExpirable: Bool, isPhysical: Bool, logo: String? = nil, name: String? = nil, slug: String, tag: String? = nil) {
            
            self.isExpirable = isExpirable
            
            self.description = description
            
            self.categories = categories
            
            self.logo = logo
            
            self.slug = slug
            
            self.name = name
            
            self.isActive = isActive
            
            self.departments = departments
            
            self.attributes = attributes
            
            self.id = id
            
            self.tag = tag
            
            self.isArchived = isArchived
            
            self.isPhysical = isPhysical
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isExpirable = try container.decode(Bool.self, forKey: .isExpirable)
                
            
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categories = try container.decode([String].self, forKey: .categories)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                
            
            
                do {
                    departments = try container.decode([String].self, forKey: .departments)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode([String].self, forKey: .attributes)
                
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
                    tag = try container.decode(String.self, forKey: .tag)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isArchived = try container.decode(Bool.self, forKey: .isArchived)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isPhysical = try container.decode(Bool.self, forKey: .isPhysical)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isExpirable, forKey: .isExpirable)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encode(categories, forKey: .categories)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encode(departments, forKey: .departments)
            
            
            
            
            try? container.encode(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(tag, forKey: .tag)
            
            
            
            
            try? container.encodeIfPresent(isArchived, forKey: .isArchived)
            
            
            
            
            try? container.encodeIfPresent(isPhysical, forKey: .isPhysical)
            
            
        }
        
    }
}
