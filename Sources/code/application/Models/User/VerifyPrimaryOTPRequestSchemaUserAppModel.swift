

import Foundation
public extension ApplicationClient.User {
    /*
        Model: VerifyPrimaryOTPRequestSchema
        Used By: User
    */
    class VerifyPrimaryOTPRequestSchema: Codable {
        
        public var otp: String
        
        public var requestId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case otp = "otp"
            
            case requestId = "request_id"
            
        }

        public init(otp: String, requestId: String) {
            
            self.otp = otp
            
            self.requestId = requestId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            otp = try container.decode(String.self, forKey: .otp)
            
            
            
            
            requestId = try container.decode(String.self, forKey: .requestId)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
}
