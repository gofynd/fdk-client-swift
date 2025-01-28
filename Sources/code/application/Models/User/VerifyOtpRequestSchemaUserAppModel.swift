

import Foundation
public extension ApplicationClient.User {
    /*
        Model: VerifyOtpRequestSchema
        Used By: User
    */
    class VerifyOtpRequestSchema: Codable {
        
        public var requestId: String
        
        public var registerToken: String?
        
        public var otp: String
        

        public enum CodingKeys: String, CodingKey {
            
            case requestId = "request_id"
            
            case registerToken = "register_token"
            
            case otp = "otp"
            
        }

        public init(otp: String, registerToken: String? = nil, requestId: String) {
            
            self.requestId = requestId
            
            self.registerToken = registerToken
            
            self.otp = otp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
            
            
            
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
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
            
            try? container.encodeIfPresent(registerToken, forKey: .registerToken)
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
        }
        
    }
}
