

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: ScreenshotManifest
        Used By: Theme
    */
    class ScreenshotManifest: Codable {
        
        public var src: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case src = "src"
            
            case type = "type"
            
        }

        public init(src: String? = nil, type: String? = nil) {
            
            self.src = src
            
            self.type = type
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(src, forKey: .src)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}
