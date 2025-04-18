

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: PartialUserGroupUpdateSchema
        Used By: User
    */

    class PartialUserGroupUpdateSchema: Codable {
        
        
        public var type: String?
        
        public var name: String?
        
        public var description: String?
        
        public var fileUrl: String?
        
        public var userData: [UserGroupUpdateData]?
        
        public var whitelistedUsers: [String]?
        
        public var blacklistedUsers: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case name = "name"
            
            case description = "description"
            
            case fileUrl = "file_url"
            
            case userData = "user_data"
            
            case whitelistedUsers = "whitelisted_users"
            
            case blacklistedUsers = "blacklisted_users"
            
        }

        public init(blacklistedUsers: [String]? = nil, description: String? = nil, fileUrl: String? = nil, name: String? = nil, type: String? = nil, userData: [UserGroupUpdateData]? = nil, whitelistedUsers: [String]? = nil) {
            
            self.type = type
            
            self.name = name
            
            self.description = description
            
            self.fileUrl = fileUrl
            
            self.userData = userData
            
            self.whitelistedUsers = whitelistedUsers
            
            self.blacklistedUsers = blacklistedUsers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userData = try container.decode([UserGroupUpdateData].self, forKey: .userData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    whitelistedUsers = try container.decode([String].self, forKey: .whitelistedUsers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    blacklistedUsers = try container.decode([String].self, forKey: .blacklistedUsers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(userData, forKey: .userData)
            
            
            
            
            try? container.encodeIfPresent(whitelistedUsers, forKey: .whitelistedUsers)
            
            
            
            
            try? container.encodeIfPresent(blacklistedUsers, forKey: .blacklistedUsers)
            
            
        }
        
    }
}


