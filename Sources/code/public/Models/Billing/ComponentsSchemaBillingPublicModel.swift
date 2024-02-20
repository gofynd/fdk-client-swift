

import Foundation
public extension PublicClient.Billing {
    /*
        Model: ComponentsSchema
        Used By: Billing
    */

    class ComponentsSchema: Codable {
        
        
        public var name: String?
        
        public var slug: String?
        
        public var description: String?
        
        public var group: String?
        
        public var icon: String?
        
        public var links: [String: Any]?
        
        public var config: PlanConfig?
        
        public var isActive: Bool?
        
        public var displayText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case description = "description"
            
            case group = "group"
            
            case icon = "icon"
            
            case links = "links"
            
            case config = "config"
            
            case isActive = "is_active"
            
            case displayText = "display_text"
            
        }

        public init(config: PlanConfig? = nil, description: String? = nil, displayText: String? = nil, group: String? = nil, icon: String? = nil, isActive: Bool? = nil, links: [String: Any]? = nil, name: String? = nil, slug: String? = nil) {
            
            self.name = name
            
            self.slug = slug
            
            self.description = description
            
            self.group = group
            
            self.icon = icon
            
            self.links = links
            
            self.config = config
            
            self.isActive = isActive
            
            self.displayText = displayText
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    group = try container.decode(String.self, forKey: .group)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    links = try container.decode([String: Any].self, forKey: .links)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    config = try container.decode(PlanConfig.self, forKey: .config)
                
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
                    displayText = try container.decode(String.self, forKey: .displayText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(group, forKey: .group)
            
            
            
            try? container.encodeIfPresent(icon, forKey: .icon)
            
            
            
            try? container.encodeIfPresent(links, forKey: .links)
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            try? container.encodeIfPresent(displayText, forKey: .displayText)
            
            
        }
        
    }
}
