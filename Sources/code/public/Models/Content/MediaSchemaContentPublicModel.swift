

import Foundation
public extension PublicClient.Content {
    /*
        Model: MediaSchema
        Used By: Content
    */

    class MediaSchema: Codable {
        
        
        public var url: String?
        
        public var type: String?
        
        public var alt: String?
        
        public var anchorLink: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case type = "type"
            
            case alt = "alt"
            
            case anchorLink = "anchor_link"
            
        }

        public init(alt: String? = nil, anchorLink: String? = nil, type: String? = nil, url: String? = nil) {
            
            self.url = url
            
            self.type = type
            
            self.alt = alt
            
            self.anchorLink = anchorLink
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    url = try container.decode(String.self, forKey: .url)
                
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
                    alt = try container.decode(String.self, forKey: .alt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    anchorLink = try container.decode(String.self, forKey: .anchorLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(alt, forKey: .alt)
            
            
            
            try? container.encodeIfPresent(anchorLink, forKey: .anchorLink)
            
            
        }
        
    }
}
