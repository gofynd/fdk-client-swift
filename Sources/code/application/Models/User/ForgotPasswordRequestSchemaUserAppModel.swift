

import Foundation
public extension ApplicationClient.User {
    /*
        Model: ForgotPasswordRequestSchema
        Used By: User
    */
    class ForgotPasswordRequestSchema: Codable {
        
        public var code: String
        
        public var password: String
        

        public enum CodingKeys: String, CodingKey {
            
            case code = "code"
            
            case password = "password"
            
        }

        public init(code: String, password: String) {
            
            self.code = code
            
            self.password = password
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            code = try container.decode(String.self, forKey: .code)
            
            
            
            
            password = try container.decode(String.self, forKey: .password)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            
        }
        
    }
}
