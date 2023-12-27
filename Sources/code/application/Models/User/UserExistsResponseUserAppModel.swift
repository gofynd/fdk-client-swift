

import Foundation
public extension ApplicationClient.User {
    /*
        Model: UserExistsResponse
        Used By: User
    */
    class UserExistsResponse: Codable {
        
        public var userExists: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case userExists = "user_exists"
            
        }

        public init(userExists: Bool? = nil) {
            
            self.userExists = userExists
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                userExists = try container.decode(Bool.self, forKey: .userExists)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userExists, forKey: .userExists)
            
            
        }
        
    }
}
