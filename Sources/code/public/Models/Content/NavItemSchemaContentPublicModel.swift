

import Foundation
public extension PublicClient.Content {
    /*
        Model: NavItemSchema
        Used By: Content
    */

    class NavItemSchema: Codable {
        
        
        public var title: String?
        
        public var link: String?
        
        public var href: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case title = "title"
            
            case link = "link"
            
            case href = "href"
            
        }

        public init(href: String? = nil, link: String? = nil, title: String? = nil) {
            
            self.title = title
            
            self.link = link
            
            self.href = href
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    href = try container.decode(String.self, forKey: .href)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            try? container.encodeIfPresent(link, forKey: .link)
            
            
            
            try? container.encodeIfPresent(href, forKey: .href)
            
            
        }
        
    }
}
