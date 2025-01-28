

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: CreateUserGroup
        Used By: User
    */

    class CreateUserGroup: Codable {
        
        
        public var conditions: [ConditionsSchema]?
        
        public var type: String?
        
        public var name: String
        
        public var description: String
        
        public var fileUrl: String?
        
        public var blacklistedUsers: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case conditions = "conditions"
            
            case type = "type"
            
            case name = "name"
            
            case description = "description"
            
            case fileUrl = "file_url"
            
            case blacklistedUsers = "blacklisted_users"
            
        }

        public init(blacklistedUsers: [String]? = nil, conditions: [ConditionsSchema]? = nil, description: String, fileUrl: String? = nil, name: String, type: String? = nil) {
            
            self.conditions = conditions
            
            self.type = type
            
            self.name = name
            
            self.description = description
            
            self.fileUrl = fileUrl
            
            self.blacklistedUsers = blacklistedUsers
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    conditions = try container.decode([ConditionsSchema].self, forKey: .conditions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                description = try container.decode(String.self, forKey: .description)
                
            
            
            
                do {
                    fileUrl = try container.decode(String.self, forKey: .fileUrl)
                
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
            
            
            
            try? container.encodeIfPresent(conditions, forKey: .conditions)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(fileUrl, forKey: .fileUrl)
            
            
            
            
            try? container.encodeIfPresent(blacklistedUsers, forKey: .blacklistedUsers)
            
            
        }
        
    }
}


