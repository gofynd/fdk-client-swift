

import Foundation




public extension PlatformClient.ApplicationClient.Share {
    /*
        Model: UrlInfo
        Used By: Share
    */

    class UrlInfo: Codable {
        
        
        public var hash: String?
        
        public var shortUrl: String?
        
        public var alias: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case hash = "hash"
            
            case shortUrl = "short_url"
            
            case alias = "alias"
            
        }

        public init(alias: String? = nil, hash: String? = nil, shortUrl: String? = nil) {
            
            self.hash = hash
            
            self.shortUrl = shortUrl
            
            self.alias = alias
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
            
                do {
                    alias = try container.decode(String.self, forKey: .alias)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(hash, forKey: .hash)
            
            
            
            
            try? container.encodeIfPresent(shortUrl, forKey: .shortUrl)
            
            
            
            
            try? container.encodeIfPresent(alias, forKey: .alias)
            
            
        }
        
    }
}


