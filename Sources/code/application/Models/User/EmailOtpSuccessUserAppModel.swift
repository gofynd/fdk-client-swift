

import Foundation
public extension ApplicationClient.User {
    /*
        Model: EmailOtpSuccess
        Used By: User
    */
    class EmailOtpSuccess: Codable {
        
        public var success: Bool?
        
        public var resendEmailToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case resendEmailToken = "resend_email_token"
            
        }

        public init(resendEmailToken: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.resendEmailToken = resendEmailToken
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                resendEmailToken = try container.decode(String.self, forKey: .resendEmailToken)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(resendEmailToken, forKey: .resendEmailToken)
            
            
        }
        
    }
}
