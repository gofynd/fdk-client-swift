

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserSearchResponseSchema
        Used By: User
    */

    class UserSearchResponseSchema: Codable {
        
        
        public var users: [UserSearchSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case users = "users"
            
        }

        public init(users: [UserSearchSchema]? = nil) {
            
            self.users = users
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    users = try container.decode([UserSearchSchema].self, forKey: .users)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
        }
        
    }
}


