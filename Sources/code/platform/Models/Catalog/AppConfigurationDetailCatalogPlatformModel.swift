

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AppConfigurationDetail
        Used By: Catalog
    */

    class AppConfigurationDetail: Codable {
        
        
        public var templateSlugs: [String]?
        
        public var attributes: [AttributeDetailsGroup]?
        
        public var isDefault: Bool
        
        public var logo: String?
        
        public var isActive: Bool
        
        public var slug: String
        
        public var appId: String
        
        public var priority: Int
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case templateSlugs = "template_slugs"
            
            case attributes = "attributes"
            
            case isDefault = "is_default"
            
            case logo = "logo"
            
            case isActive = "is_active"
            
            case slug = "slug"
            
            case appId = "app_id"
            
            case priority = "priority"
            
            case name = "name"
            
        }

        public init(appId: String, attributes: [AttributeDetailsGroup]? = nil, isActive: Bool, isDefault: Bool, logo: String? = nil, name: String? = nil, priority: Int, slug: String, templateSlugs: [String]? = nil) {
            
            self.templateSlugs = templateSlugs
            
            self.attributes = attributes
            
            self.isDefault = isDefault
            
            self.logo = logo
            
            self.isActive = isActive
            
            self.slug = slug
            
            self.appId = appId
            
            self.priority = priority
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    templateSlugs = try container.decode([String].self, forKey: .templateSlugs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode([AttributeDetailsGroup].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(templateSlugs, forKey: .templateSlugs)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AppConfigurationDetail
        Used By: Catalog
    */

    class AppConfigurationDetail: Codable {
        
        
        public var templateSlugs: [String]?
        
        public var attributes: [AttributeDetailsGroup]?
        
        public var isDefault: Bool
        
        public var logo: String?
        
        public var isActive: Bool
        
        public var slug: String
        
        public var appId: String
        
        public var priority: Int
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case templateSlugs = "template_slugs"
            
            case attributes = "attributes"
            
            case isDefault = "is_default"
            
            case logo = "logo"
            
            case isActive = "is_active"
            
            case slug = "slug"
            
            case appId = "app_id"
            
            case priority = "priority"
            
            case name = "name"
            
        }

        public init(appId: String, attributes: [AttributeDetailsGroup]? = nil, isActive: Bool, isDefault: Bool, logo: String? = nil, name: String? = nil, priority: Int, slug: String, templateSlugs: [String]? = nil) {
            
            self.templateSlugs = templateSlugs
            
            self.attributes = attributes
            
            self.isDefault = isDefault
            
            self.logo = logo
            
            self.isActive = isActive
            
            self.slug = slug
            
            self.appId = appId
            
            self.priority = priority
            
            self.name = name
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    templateSlugs = try container.decode([String].self, forKey: .templateSlugs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode([AttributeDetailsGroup].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(templateSlugs, forKey: .templateSlugs)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}


