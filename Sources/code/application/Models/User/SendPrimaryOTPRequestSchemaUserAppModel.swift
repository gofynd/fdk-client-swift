

import Foundation
public extension ApplicationClient.User {
    /*
        Model: SendPrimaryOTPRequestSchema
        Used By: User
    */
    class SendPrimaryOTPRequestSchema: Codable {
        
        public var encryptOtp: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case encryptOtp = "encrypt_otp"
            
        }

        public init(encryptOtp: Bool? = nil) {
            
            self.encryptOtp = encryptOtp
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                encryptOtp = try container.decode(Bool.self, forKey: .encryptOtp)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(encryptOtp, forKey: .encryptOtp)
            
            
        }
        
    }
}
