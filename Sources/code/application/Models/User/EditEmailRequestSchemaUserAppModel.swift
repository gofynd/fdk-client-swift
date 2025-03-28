

import Foundation
public extension ApplicationClient.User {
    /*
        Model: EditEmailRequestSchema
        Used By: User
    */
    class EditEmailRequestSchema: Codable {
        
        public var email: String
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
        }

        public init(email: String) {
            
            self.email = email
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            email = try container.decode(String.self, forKey: .email)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
        }
        
    }
}
