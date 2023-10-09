

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserGroupUpdateData
        Used By: User
    */

    class UserGroupUpdateData: Codable {
        
        
        public var userId: String?
        
        public var phoneNumber: String?
        
        public var email: String?
        
        public var action: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case phoneNumber = "phone_number"
            
            case email = "email"
            
            case action = "action"
            
        }

        public init(action: String, email: String? = nil, phoneNumber: String? = nil, userId: String? = nil) {
            
            self.userId = userId
            
            self.phoneNumber = phoneNumber
            
            self.email = email
            
            self.action = action
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                action = try container.decode(String.self, forKey: .action)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
}


