

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: Features
        Used By: Billing
    */

    class Features: Codable {
        
        
        public var name: String?
        
        public var slug: String?
        
        public var description: String?
        
        public var group: String?
        
        public var enabled: Bool?
        
        public var displayText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case slug = "slug"
            
            case description = "description"
            
            case group = "group"
            
            case enabled = "enabled"
            
            case displayText = "display_text"
            
        }

        public init(description: String? = nil, displayText: String? = nil, enabled: Bool? = nil, group: String? = nil, name: String? = nil, slug: String? = nil) {
            
            self.name = name
            
            self.slug = slug
            
            self.description = description
            
            self.group = group
            
            self.enabled = enabled
            
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
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
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
            
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(displayText, forKey: .displayText)
            
            
        }
        
    }
}




