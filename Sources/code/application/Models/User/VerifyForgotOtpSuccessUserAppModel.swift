

import Foundation
public extension ApplicationClient.User {
    /*
        Model: VerifyForgotOtpSuccess
        Used By: User
    */
    class VerifyForgotOtpSuccess: Codable {
        
        public var success: Bool?
        
        public var forgotToken: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case forgotToken = "forgot_token"
            
        }

        public init(forgotToken: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.forgotToken = forgotToken
            
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
                forgotToken = try container.decode(String.self, forKey: .forgotToken)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(forgotToken, forKey: .forgotToken)
            
            
        }
        
    }
}
