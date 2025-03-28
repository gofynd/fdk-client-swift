

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CDN
        Used By: Order
    */

    class CDN: Codable {
        
        
        public var url: String
        
        public var absoluteUrl: String
        
        public var relativeUrl: String
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case absoluteUrl = "absolute_url"
            
            case relativeUrl = "relative_url"
            
        }

        public init(absoluteUrl: String, relativeUrl: String, url: String) {
            
            self.url = url
            
            self.absoluteUrl = absoluteUrl
            
            self.relativeUrl = relativeUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                url = try container.decode(String.self, forKey: .url)
                
            
            
            
                absoluteUrl = try container.decode(String.self, forKey: .absoluteUrl)
                
            
            
            
                relativeUrl = try container.decode(String.self, forKey: .relativeUrl)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(absoluteUrl, forKey: .absoluteUrl)
            
            
            
            
            try? container.encodeIfPresent(relativeUrl, forKey: .relativeUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CDN
        Used By: Order
    */

    class CDN: Codable {
        
        
        public var url: String
        
        public var absoluteUrl: String
        
        public var relativeUrl: String
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case absoluteUrl = "absolute_url"
            
            case relativeUrl = "relative_url"
            
        }

        public init(absoluteUrl: String, relativeUrl: String, url: String) {
            
            self.url = url
            
            self.absoluteUrl = absoluteUrl
            
            self.relativeUrl = relativeUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                url = try container.decode(String.self, forKey: .url)
                
            
            
            
                absoluteUrl = try container.decode(String.self, forKey: .absoluteUrl)
                
            
            
            
                relativeUrl = try container.decode(String.self, forKey: .relativeUrl)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            
            try? container.encodeIfPresent(absoluteUrl, forKey: .absoluteUrl)
            
            
            
            
            try? container.encodeIfPresent(relativeUrl, forKey: .relativeUrl)
            
            
        }
        
    }
}


