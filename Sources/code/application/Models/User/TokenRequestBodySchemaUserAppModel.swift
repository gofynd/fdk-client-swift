

import Foundation
public extension ApplicationClient.User {
    /*
        Model: TokenRequestBodySchema
        Used By: User
    */
    class TokenRequestBodySchema: Codable {
        
        public var token: String
        

        public enum CodingKeys: String, CodingKey {
            
            case token = "token"
            
        }

        public init(token: String) {
            
            self.token = token
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            token = try container.decode(String.self, forKey: .token)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(token, forKey: .token)
            
            
        }
        
    }
}
