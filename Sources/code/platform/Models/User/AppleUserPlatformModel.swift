

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: Apple
        Used By: User
    */

    class Apple: Codable {
        
        
        public var appId: String?
        
        public var redirectUri: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case redirectUri = "redirect_uri"
            
        }

        public init(appId: String? = nil, redirectUri: String? = nil) {
            
            self.appId = appId
            
            self.redirectUri = redirectUri
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    redirectUri = try container.decode(String.self, forKey: .redirectUri)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(redirectUri, forKey: .redirectUri)
            
            
        }
        
    }
}


