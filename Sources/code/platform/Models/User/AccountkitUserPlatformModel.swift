

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: Accountkit
        Used By: User
    */

    class Accountkit: Codable {
        
        
        public var appId: String?
        
        public var appSecret: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case appSecret = "app_secret"
            
        }

        public init(appId: String? = nil, appSecret: String? = nil) {
            
            self.appId = appId
            
            self.appSecret = appSecret
            
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
                    appSecret = try container.decode(String.self, forKey: .appSecret)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(appSecret, forKey: .appSecret)
            
            
        }
        
    }
}


