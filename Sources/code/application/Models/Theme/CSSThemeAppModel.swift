

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: CSS
        Used By: Theme
    */
    class CSS: Codable {
        
        public var link: String?
        
        public var links: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case link = "link"
            
            case links = "links"
            
        }

        public init(link: String? = nil, links: [String]? = nil) {
            
            self.link = link
            
            self.links = links
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                link = try container.decode(String.self, forKey: .link)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                links = try container.decode([String].self, forKey: .links)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(link, forKey: .link)
            
            
            
            try? container.encodeIfPresent(links, forKey: .links)
            
            
        }
        
    }
}
