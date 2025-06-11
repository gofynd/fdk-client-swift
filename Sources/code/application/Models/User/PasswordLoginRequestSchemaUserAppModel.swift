

import Foundation
public extension ApplicationClient.User {
    /*
        Model: PasswordLoginRequestSchema
        Used By: User
    */
    class PasswordLoginRequestSchema: Codable {
        
        public var password: String
        
        public var username: String
        

        public enum CodingKeys: String, CodingKey {
            
            case password = "password"
            
            case username = "username"
            
        }

        public init(password: String, username: String) {
            
            self.password = password
            
            self.username = username
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            password = try container.decode(String.self, forKey: .password)
            
            
            
            
            username = try container.decode(String.self, forKey: .username)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
        }
        
    }
}
