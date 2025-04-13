

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: SectionAssets
        Used By: Theme
    */
    class SectionAssets: Codable {
        
        public var js: String?
        
        public var css: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case js = "js"
            
            case css = "css"
            
        }

        public init(css: String? = nil, js: String? = nil) {
            
            self.js = js
            
            self.css = css
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                js = try container.decode(String.self, forKey: .js)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                css = try container.decode(String.self, forKey: .css)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(js, forKey: .js)
            
            
            
            try? container.encodeIfPresent(css, forKey: .css)
            
            
        }
        
    }
}
