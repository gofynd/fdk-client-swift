

import Foundation
public extension ApplicationClient.User {
    /*
        Model: VerifyOTPForUpdateRequestSchema
        Used By: User
    */
    class VerifyOTPForUpdateRequestSchema: Codable {
        
        public var email: String?
        
        public var otp: String
        
        public var requestId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case otp = "otp"
            
            case requestId = "request_id"
            
        }

        public init(email: String? = nil, otp: String, requestId: String) {
            
            self.email = email
            
            self.otp = otp
            
            self.requestId = requestId
            
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
            
            
            
            otp = try container.decode(String.self, forKey: .otp)
            
            
            
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
}
