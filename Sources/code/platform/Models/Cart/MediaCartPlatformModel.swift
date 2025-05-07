

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: Media
        Used By: Cart
    */

    class Media: Codable {
        
        
        public var url: String?
        
        public var type: String?
        
        public var altText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case type = "type"
            
            case altText = "alt_text"
            
        }

        public init(altText: String? = nil, type: String? = nil, url: String? = nil) {
            
            self.url = url
            
            self.type = type
            
            self.altText = altText
            
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
                    altText = try container.decode(String.self, forKey: .altText)
                
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
            
            
            
            
            try? container.encodeIfPresent(altText, forKey: .altText)
            
            
        }
        
    }
}


