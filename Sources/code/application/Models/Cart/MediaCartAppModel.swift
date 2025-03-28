

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: Media
        Used By: Cart
    */
    class Media: Codable {
        
        public var alt: String?
        
        public var logo: String?
        
        public var url: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case alt = "alt"
            
            case logo = "logo"
            
            case url = "url"
            
        }

        public init(alt: String? = nil, logo: String? = nil, url: String? = nil) {
            
            self.alt = alt
            
            self.logo = logo
            
            self.url = url
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                alt = try container.decode(String.self, forKey: .alt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                logo = try container.decode(String.self, forKey: .logo)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(alt, forKey: .alt)
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
        }
        
    }
}
