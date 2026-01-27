

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: AllowedDomain
        Used By: Configuration
    */
    class AllowedDomain: Codable {
        
        public var host: String
        
        public var urlScheme: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case host = "host"
            
            case urlScheme = "url_scheme"
            
        }

        public init(host: String, urlScheme: String? = nil) {
            
            self.host = host
            
            self.urlScheme = urlScheme
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            host = try container.decode(String.self, forKey: .host)
            
            
            
            
            do {
                urlScheme = try container.decode(String.self, forKey: .urlScheme)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(host, forKey: .host)
            
            
            
            try? container.encodeIfPresent(urlScheme, forKey: .urlScheme)
            
            
        }
        
    }
}
