

import Foundation
public extension ApplicationClient.User {
    /*
        Model: SendMobileVerifyLinkSuccess
        Used By: User
    */
    class SendMobileVerifyLinkSuccess: Codable {
        
        public var verifyMobileLink: Bool?
        
        public var user: UserSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case verifyMobileLink = "verify_mobile_link"
            
            case user = "user"
            
        }

        public init(user: UserSchema? = nil, verifyMobileLink: Bool? = nil) {
            
            self.verifyMobileLink = verifyMobileLink
            
            self.user = user
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                verifyMobileLink = try container.decode(Bool.self, forKey: .verifyMobileLink)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                user = try container.decode(UserSchema.self, forKey: .user)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(verifyMobileLink, forKey: .verifyMobileLink)
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
        }
        
    }
}
