

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: ShortcutManifest
        Used By: Theme
    */
    class ShortcutManifest: Codable {
        
        public var name: String?
        
        public var url: String?
        
        public var icons: [IconManifest]?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case url = "url"
            
            case icons = "icons"
            
        }

        public init(icons: [IconManifest]? = nil, name: String? = nil, url: String? = nil) {
            
            self.name = name
            
            self.url = url
            
            self.icons = icons
            
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
                url = try container.decode(String.self, forKey: .url)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            try? container.encodeIfPresent(icons, forKey: .icons)
            
            
        }
        
    }
}
