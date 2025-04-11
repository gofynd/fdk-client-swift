

import Foundation
public extension ApplicationClient.User {
    /*
        Model: VerifyEmailForgotOtpRequestSchema
        Used By: User
    */
    class VerifyEmailForgotOtpRequestSchema: Codable {
        
        public var email: String
        
        public var otp: String
        
        public var requestId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case otp = "otp"
            
            case requestId = "request_id"
            
        }

        public init(email: String, otp: String, requestId: String? = nil) {
            
            self.email = email
            
            self.otp = otp
            
            self.requestId = requestId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            email = try container.decode(String.self, forKey: .email)
            
            
            
            
            otp = try container.decode(String.self, forKey: .otp)
            
            
            
            
            do {
                requestId = try container.decode(String.self, forKey: .requestId)
            
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
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
}
