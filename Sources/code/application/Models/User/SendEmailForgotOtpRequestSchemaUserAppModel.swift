

import Foundation
public extension ApplicationClient.User {
    /*
        Model: SendEmailForgotOtpRequestSchema
        Used By: User
    */
    class SendEmailForgotOtpRequestSchema: Codable {
        
        public var email: String
        
        public var action: String
        
        public var token: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case action = "action"
            
            case token = "token"
            
        }

        public init(action: String, email: String, token: String? = nil) {
            
            self.email = email
            
            self.action = action
            
            self.token = token
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            email = try container.decode(String.self, forKey: .email)
            
            
            
            
            action = try container.decode(String.self, forKey: .action)
            
            
            
            
            do {
                token = try container.decode(String.self, forKey: .token)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
        }
        
    }
}
