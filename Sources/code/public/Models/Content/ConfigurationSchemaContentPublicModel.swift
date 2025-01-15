

import Foundation
public extension PublicClient.Content {
    /*
        Model: ConfigurationSchema
        Used By: Content
    */

    class ConfigurationSchema: Codable {
        
        
        public var token: String?
        
        public var host: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
            case host = "host"
            
        }

        public init(host: String? = nil, token: String? = nil) {
            
            self.token = token
            
            self.host = host
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    host = try container.decode(String.self, forKey: .host)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
            
            try? container.encodeIfPresent(host, forKey: .host)
            
            
        }
        
    }
}
