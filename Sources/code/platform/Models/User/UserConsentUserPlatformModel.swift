

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserConsent
        Used By: User
    */

    class UserConsent: Codable {
        
        
        public var privacyPolicy: PrivacyPolicyConsentSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case privacyPolicy = "privacy_policy"
            
        }

        public init(privacyPolicy: PrivacyPolicyConsentSchema? = nil) {
            
            self.privacyPolicy = privacyPolicy
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    privacyPolicy = try container.decode(PrivacyPolicyConsentSchema.self, forKey: .privacyPolicy)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(privacyPolicy, forKey: .privacyPolicy)
            
            
        }
        
    }
}


