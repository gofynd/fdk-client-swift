

import Foundation
public extension ApplicationClient.User {
    /*
        Model: VerifyEmailForgotOtpRequestSchema
        Used By: User
    */
    class VerifyEmailForgotOtpRequestSchema: Codable {
        
        public var email: String?
        
        public var otp: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case otp = "otp"
            
        }

        public init(email: String? = nil, otp: String? = nil) {
            
            self.email = email
            
            self.otp = otp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                email = try container.decode(String.self, forKey: .email)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                otp = try container.decode(String.self, forKey: .otp)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
        }
        
    }
}
