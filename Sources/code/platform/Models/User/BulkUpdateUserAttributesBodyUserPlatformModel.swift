

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: BulkUpdateUserAttributesBody
        Used By: User
    */

    class BulkUpdateUserAttributesBody: Codable {
        
        
        public var users: [String]?
        
        public var userFileUrl: String?
        
        public var attribute: [BulkUpdateUserSameAttributes]?
        

        public enum CodingKeys: String, CodingKey {
            
            case users = "users"
            
            case userFileUrl = "user_file_url"
            
            case attribute = "attribute"
            
        }

        public init(attribute: [BulkUpdateUserSameAttributes]? = nil, users: [String]? = nil, userFileUrl: String? = nil) {
            
            self.users = users
            
            self.userFileUrl = userFileUrl
            
            self.attribute = attribute
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    users = try container.decode([String].self, forKey: .users)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userFileUrl = try container.decode(String.self, forKey: .userFileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attribute = try container.decode([BulkUpdateUserSameAttributes].self, forKey: .attribute)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(users, forKey: .users)
            
            
            
            
            try? container.encodeIfPresent(userFileUrl, forKey: .userFileUrl)
            
            
            
            
            try? container.encodeIfPresent(attribute, forKey: .attribute)
            
            
        }
        
    }
}


