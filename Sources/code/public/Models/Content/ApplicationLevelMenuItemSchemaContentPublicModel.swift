

import Foundation
public extension PublicClient.Content {
    /*
        Model: ApplicationLevelMenuItemSchema
        Used By: Content
    */

    class ApplicationLevelMenuItemSchema: Codable {
        
        
        public var visibleOn: VisibleOnSchema?
        
        public var display: String?
        
        public var permissions: [String]?
        
        public var title: String?
        
        public var link: String?
        
        public var icon: String?
        
        public var isDisabled: Bool?
        
        public var child: [ApplicationLevelMenuItemSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case visibleOn = "visible_on"
            
            case display = "display"
            
            case permissions = "permissions"
            
            case title = "title"
            
            case link = "link"
            
            case icon = "icon"
            
            case isDisabled = "is_disabled"
            
            case child = "child"
            
        }

        public init(child: [ApplicationLevelMenuItemSchema]? = nil, display: String? = nil, icon: String? = nil, isDisabled: Bool? = nil, link: String? = nil, permissions: [String]? = nil, title: String? = nil, visibleOn: VisibleOnSchema? = nil) {
            
            self.visibleOn = visibleOn
            
            self.display = display
            
            self.permissions = permissions
            
            self.title = title
            
            self.link = link
            
            self.icon = icon
            
            self.isDisabled = isDisabled
            
            self.child = child
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    visibleOn = try container.decode(VisibleOnSchema.self, forKey: .visibleOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    permissions = try container.decode([String].self, forKey: .permissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    link = try container.decode(String.self, forKey: .link)
                
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
                    isDisabled = try container.decode(Bool.self, forKey: .isDisabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    child = try container.decode([ApplicationLevelMenuItemSchema].self, forKey: .child)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(visibleOn, forKey: .visibleOn)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            try? container.encodeIfPresent(permissions, forKey: .permissions)
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            try? container.encodeIfPresent(link, forKey: .link)
            
            
            
            try? container.encodeIfPresent(icon, forKey: .icon)
            
            
            
            try? container.encodeIfPresent(isDisabled, forKey: .isDisabled)
            
            
            
            try? container.encodeIfPresent(child, forKey: .child)
            
            
        }
        
    }
}
