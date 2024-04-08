

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: ManifestConfig
        Used By: Theme
    */
    class ManifestConfig: Codable {
        
        public var active: Bool?
        
        public var name: String?
        
        public var description: String?
        
        public var installDesktop: Bool?
        
        public var installMobile: Bool?
        
        public var buttonText: String?
        
        public var icons: [IconManifest]?
        
        public var screenshots: [ScreenshotManifest]?
        
        public var shortcuts: [ShortcutManifest]?
        

        public enum CodingKeys: String, CodingKey {
            
            case active = "active"
            
            case name = "name"
            
            case description = "description"
            
            case installDesktop = "install_desktop"
            
            case installMobile = "install_mobile"
            
            case buttonText = "button_text"
            
            case icons = "icons"
            
            case screenshots = "screenshots"
            
            case shortcuts = "shortcuts"
            
        }

        public init(active: Bool? = nil, buttonText: String? = nil, description: String? = nil, icons: [IconManifest]? = nil, installDesktop: Bool? = nil, installMobile: Bool? = nil, name: String? = nil, screenshots: [ScreenshotManifest]? = nil, shortcuts: [ShortcutManifest]? = nil) {
            
            self.active = active
            
            self.name = name
            
            self.description = description
            
            self.installDesktop = installDesktop
            
            self.installMobile = installMobile
            
            self.buttonText = buttonText
            
            self.icons = icons
            
            self.screenshots = screenshots
            
            self.shortcuts = shortcuts
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                active = try container.decode(Bool.self, forKey: .active)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
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
                installDesktop = try container.decode(Bool.self, forKey: .installDesktop)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                installMobile = try container.decode(Bool.self, forKey: .installMobile)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                buttonText = try container.decode(String.self, forKey: .buttonText)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                icons = try container.decode([IconManifest].self, forKey: .icons)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                screenshots = try container.decode([ScreenshotManifest].self, forKey: .screenshots)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shortcuts = try container.decode([ShortcutManifest].self, forKey: .shortcuts)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(installDesktop, forKey: .installDesktop)
            
            
            
            try? container.encodeIfPresent(installMobile, forKey: .installMobile)
            
            
            
            try? container.encodeIfPresent(buttonText, forKey: .buttonText)
            
            
            
            try? container.encodeIfPresent(icons, forKey: .icons)
            
            
            
            try? container.encodeIfPresent(screenshots, forKey: .screenshots)
            
            
            
            try? container.encodeIfPresent(shortcuts, forKey: .shortcuts)
            
            
        }
        
    }
}
