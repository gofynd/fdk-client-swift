

import Foundation
public extension ApplicationClient.User {
    /*
        Model: SocialTokens
        Used By: User
    */
    class SocialTokens: Codable {
        
        public var facebook: Facebook?
        
        public var accountkit: Accountkit?
        
        public var google: Google?
        

        public enum CodingKeys: String, CodingKey {
            
            case facebook = "facebook"
            
            case accountkit = "accountkit"
            
            case google = "google"
            
        }

        public init(accountkit: Accountkit? = nil, facebook: Facebook? = nil, google: Google? = nil) {
            
            self.facebook = facebook
            
            self.accountkit = accountkit
            
            self.google = google
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                facebook = try container.decode(Facebook.self, forKey: .facebook)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                accountkit = try container.decode(Accountkit.self, forKey: .accountkit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                google = try container.decode(Google.self, forKey: .google)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(facebook, forKey: .facebook)
            
            
            
            try? container.encodeIfPresent(accountkit, forKey: .accountkit)
            
            
            
            try? container.encodeIfPresent(google, forKey: .google)
            
            
        }
        
    }
}
