

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AttributeDetailsGroup
        Used By: Catalog
    */

    class AttributeDetailsGroup: Codable {
        
        
        public var displayType: String
        
        public var isActive: Bool
        
        public var key: String?
        
        public var logo: String?
        
        public var name: String
        
        public var priority: Int
        
        public var slug: String?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayType = "display_type"
            
            case isActive = "is_active"
            
            case key = "key"
            
            case logo = "logo"
            
            case name = "name"
            
            case priority = "priority"
            
            case slug = "slug"
            
            case unit = "unit"
            
        }

        public init(displayType: String, isActive: Bool, key: String? = nil, logo: String? = nil, name: String, priority: Int, slug: String? = nil, unit: String? = nil) {
            
            self.displayType = displayType
            
            self.isActive = isActive
            
            self.key = key
            
            self.logo = logo
            
            self.name = name
            
            self.priority = priority
            
            self.slug = slug
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                displayType = try container.decode(String.self, forKey: .displayType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
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
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayType, forKey: .displayType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AttributeDetailsGroup
        Used By: Catalog
    */

    class AttributeDetailsGroup: Codable {
        
        
        public var displayType: String
        
        public var isActive: Bool
        
        public var key: String?
        
        public var logo: String?
        
        public var name: String
        
        public var priority: Int
        
        public var slug: String?
        
        public var unit: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayType = "display_type"
            
            case isActive = "is_active"
            
            case key = "key"
            
            case logo = "logo"
            
            case name = "name"
            
            case priority = "priority"
            
            case slug = "slug"
            
            case unit = "unit"
            
        }

        public init(displayType: String, isActive: Bool, key: String? = nil, logo: String? = nil, name: String, priority: Int, slug: String? = nil, unit: String? = nil) {
            
            self.displayType = displayType
            
            self.isActive = isActive
            
            self.key = key
            
            self.logo = logo
            
            self.name = name
            
            self.priority = priority
            
            self.slug = slug
            
            self.unit = unit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                displayType = try container.decode(String.self, forKey: .displayType)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
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
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                do {
                    slug = try container.decode(String.self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unit = try container.decode(String.self, forKey: .unit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(displayType, forKey: .displayType)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(unit, forKey: .unit)
            
            
        }
        
    }
}


