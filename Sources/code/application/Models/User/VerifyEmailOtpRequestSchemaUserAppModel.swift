

import Foundation
public extension ApplicationClient.User {
    /*
        Model: VerifyEmailOtpRequestSchema
        Used By: User
    */
    class VerifyEmailOtpRequestSchema: Codable {
        
        public var email: String
        
        public var requestId: String?
        
        public var action: String
        
        public var registerToken: String?
        
        public var otp: String
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case requestId = "request_id"
            
            case action = "action"
            
            case registerToken = "register_token"
            
            case otp = "otp"
            
        }

        public init(action: String, email: String, otp: String, registerToken: String? = nil, requestId: String? = nil) {
            
            self.email = email
            
            self.requestId = requestId
            
            self.action = action
            
            self.registerToken = registerToken
            
            self.otp = otp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            email = try container.decode(String.self, forKey: .email)
            
            
            
            
            do {
                requestId = try container.decode(String.self, forKey: .requestId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            action = try container.decode(String.self, forKey: .action)
            
            
            
            
            do {
                registerToken = try container.decode(String.self, forKey: .registerToken)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            otp = try container.decode(String.self, forKey: .otp)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
        }
        
    }
}
