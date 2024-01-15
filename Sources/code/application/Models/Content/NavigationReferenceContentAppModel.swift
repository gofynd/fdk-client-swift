

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: NavigationReference
        Used By: Content
    */
    class NavigationReference: Codable {
        
        public var acl: [String]?
        
        public var tags: [String]?
        
        public var localeLanguage: LocaleLanguage?
        
        public var image: String?
        
        public var type: String?
        
        public var action: Action?
        
        public var active: Bool?
        
        public var display: String?
        
        public var sortOrder: Int?
        
        public var subNavigation: [NavigationReference]?
        

        public enum CodingKeys: String, CodingKey {
            
            case acl = "acl"
            
            case tags = "tags"
            
            case localeLanguage = "_locale_language"
            
            case image = "image"
            
            case type = "type"
            
            case action = "action"
            
            case active = "active"
            
            case display = "display"
            
            case sortOrder = "sort_order"
            
            case subNavigation = "sub_navigation"
            
        }

        public init(acl: [String]? = nil, action: Action? = nil, active: Bool? = nil, display: String? = nil, image: String? = nil, sortOrder: Int? = nil, subNavigation: [NavigationReference]? = nil, tags: [String]? = nil, type: String? = nil, localeLanguage: LocaleLanguage? = nil) {
            
            self.acl = acl
            
            self.tags = tags
            
            self.localeLanguage = localeLanguage
            
            self.image = image
            
            self.type = type
            
            self.action = action
            
            self.active = active
            
            self.display = display
            
            self.sortOrder = sortOrder
            
            self.subNavigation = subNavigation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                acl = try container.decode([String].self, forKey: .acl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tags = try container.decode([String].self, forKey: .tags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                localeLanguage = try container.decode(LocaleLanguage.self, forKey: .localeLanguage)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                image = try container.decode(String.self, forKey: .image)
            
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
                action = try container.decode(Action.self, forKey: .action)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                active = try container.decode(Bool.self, forKey: .active)
            
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
                sortOrder = try container.decode(Int.self, forKey: .sortOrder)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                subNavigation = try container.decode([NavigationReference].self, forKey: .subNavigation)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(acl, forKey: .acl)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(localeLanguage, forKey: .localeLanguage)
            
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            try? container.encodeIfPresent(sortOrder, forKey: .sortOrder)
            
            
            
            try? container.encodeIfPresent(subNavigation, forKey: .subNavigation)
            
            
        }
        
    }
}
