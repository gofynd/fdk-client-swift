

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: UserDetail
        Used By: Catalog
    */

    class UserDetail: Codable {
        
        
        public var contact: String?
        
        public var superUser: Bool?
        
        public var userId: String
        
        public var username: String
        

        public enum CodingKeys: String, CodingKey {
            
            case contact = "contact"
            
            case superUser = "super_user"
            
            case userId = "user_id"
            
            case username = "username"
            
        }

        public init(contact: String? = nil, superUser: Bool? = nil, username: String, userId: String) {
            
            self.contact = contact
            
            self.superUser = superUser
            
            self.userId = userId
            
            self.username = username
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    contact = try container.decode(String.self, forKey: .contact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    superUser = try container.decode(Bool.self, forKey: .superUser)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                userId = try container.decode(String.self, forKey: .userId)
                
            
            
            
                username = try container.decode(String.self, forKey: .username)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(superUser, forKey: .superUser)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: UserDetail
        Used By: Catalog
    */

    class UserDetail: Codable {
        
        
        public var contact: String?
        
        public var superUser: Bool?
        
        public var userId: String
        
        public var username: String
        

        public enum CodingKeys: String, CodingKey {
            
            case contact = "contact"
            
            case superUser = "super_user"
            
            case userId = "user_id"
            
            case username = "username"
            
        }

        public init(contact: String? = nil, superUser: Bool? = nil, username: String, userId: String) {
            
            self.contact = contact
            
            self.superUser = superUser
            
            self.userId = userId
            
            self.username = username
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    contact = try container.decode(String.self, forKey: .contact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    superUser = try container.decode(Bool.self, forKey: .superUser)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                userId = try container.decode(String.self, forKey: .userId)
                
            
            
            
                username = try container.decode(String.self, forKey: .username)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(superUser, forKey: .superUser)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
        }
        
    }
}


