

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: IconManifest
        Used By: Theme
    */
    class IconManifest: Codable {
        
        public var src: String?
        
        public var type: String?
        
        public var sizes: String?
        
        public var iconOpacity: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case src = "src"
            
            case type = "type"
            
            case sizes = "sizes"
            
            case iconOpacity = "icon_opacity"
            
        }

        public init(iconOpacity: String? = nil, sizes: String? = nil, src: String? = nil, type: String? = nil) {
            
            self.src = src
            
            self.type = type
            
            self.sizes = sizes
            
            self.iconOpacity = iconOpacity
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                src = try container.decode(String.self, forKey: .src)
            
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
                sizes = try container.decode(String.self, forKey: .sizes)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                iconOpacity = try container.decode(String.self, forKey: .iconOpacity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(src, forKey: .src)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(sizes, forKey: .sizes)
            
            
            
            try? container.encodeIfPresent(iconOpacity, forKey: .iconOpacity)
            
            
        }
        
    }
}
