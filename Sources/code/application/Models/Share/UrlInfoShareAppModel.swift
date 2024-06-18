

import Foundation
public extension ApplicationClient.Share {
    /*
        Model: UrlInfo
        Used By: Share
    */
    class UrlInfo: Codable {
        
        public var original: String?
        
        public var hash: String?
        
        public var shortUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case original = "original"
            
            case hash = "hash"
            
            case shortUrl = "short_url"
            
        }

        public init(hash: String? = nil, original: String? = nil, shortUrl: String? = nil) {
            
            self.original = original
            
            self.hash = hash
            
            self.shortUrl = shortUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                original = try container.decode(String.self, forKey: .original)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                hash = try container.decode(String.self, forKey: .hash)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shortUrl = try container.decode(String.self, forKey: .shortUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(original, forKey: .original)
            
            
            
            try? container.encodeIfPresent(hash, forKey: .hash)
            
            
            
            try? container.encodeIfPresent(shortUrl, forKey: .shortUrl)
            
            
        }
        
    }
}
