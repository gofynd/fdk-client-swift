

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: UserSchema
        Used By: Lead
    */

    class UserSchema: Codable {
        
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var phoneNumbers: [PhoneNumber]?
        
        public var emails: [Email]?
        
        public var passwordHistory: [UserPasswordHistory]?
        
        public var gender: String?
        
        public var active: Bool?
        
        public var profilePicUrl: String?
        
        public var username: String?
        
        public var accountType: String?
        
        public var uid: String?
        
        public var debug: Debug?
        
        public var hasOldPasswordHash: Bool?
        
        public var id: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case phoneNumbers = "phone_numbers"
            
            case emails = "emails"
            
            case passwordHistory = "password_history"
            
            case gender = "gender"
            
            case active = "active"
            
            case profilePicUrl = "profile_pic_url"
            
            case username = "username"
            
            case accountType = "account_type"
            
            case uid = "uid"
            
            case debug = "debug"
            
            case hasOldPasswordHash = "has_old_password_hash"
            
            case id = "_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(accountType: String? = nil, active: Bool? = nil, createdAt: String? = nil, debug: Debug? = nil, emails: [Email]? = nil, firstName: String? = nil, gender: String? = nil, hasOldPasswordHash: Bool? = nil, lastName: String? = nil, passwordHistory: [UserPasswordHistory]? = nil, phoneNumbers: [PhoneNumber]? = nil, profilePicUrl: String? = nil, uid: String? = nil, updatedAt: String? = nil, username: String? = nil, id: String? = nil) {
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.phoneNumbers = phoneNumbers
            
            self.emails = emails
            
            self.passwordHistory = passwordHistory
            
            self.gender = gender
            
            self.active = active
            
            self.profilePicUrl = profilePicUrl
            
            self.username = username
            
            self.accountType = accountType
            
            self.uid = uid
            
            self.debug = debug
            
            self.hasOldPasswordHash = hasOldPasswordHash
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneNumbers = try container.decode([PhoneNumber].self, forKey: .phoneNumbers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emails = try container.decode([Email].self, forKey: .emails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    passwordHistory = try container.decode([UserPasswordHistory].self, forKey: .passwordHistory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    profilePicUrl = try container.decode(String.self, forKey: .profilePicUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    username = try container.decode(String.self, forKey: .username)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    accountType = try container.decode(String.self, forKey: .accountType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    debug = try container.decode(Debug.self, forKey: .debug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hasOldPasswordHash = try container.decode(Bool.self, forKey: .hasOldPasswordHash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)
            
            
            
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            
            
            
            try? container.encodeIfPresent(passwordHistory, forKey: .passwordHistory)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
            
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(debug, forKey: .debug)
            
            
            
            
            try? container.encodeIfPresent(hasOldPasswordHash, forKey: .hasOldPasswordHash)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: UserSchema
        Used By: Lead
    */

    class UserSchema: Codable {
        
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var phoneNumbers: [PhoneNumber]?
        
        public var emails: [Email]?
        
        public var passwordHistory: [UserPasswordHistory]?
        
        public var gender: String?
        
        public var active: Bool?
        
        public var profilePicUrl: String?
        
        public var username: String?
        
        public var accountType: String?
        
        public var uid: String?
        
        public var debug: Debug?
        
        public var hasOldPasswordHash: Bool?
        
        public var id: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case phoneNumbers = "phone_numbers"
            
            case emails = "emails"
            
            case passwordHistory = "password_history"
            
            case gender = "gender"
            
            case active = "active"
            
            case profilePicUrl = "profile_pic_url"
            
            case username = "username"
            
            case accountType = "account_type"
            
            case uid = "uid"
            
            case debug = "debug"
            
            case hasOldPasswordHash = "has_old_password_hash"
            
            case id = "_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(accountType: String? = nil, active: Bool? = nil, createdAt: String? = nil, debug: Debug? = nil, emails: [Email]? = nil, firstName: String? = nil, gender: String? = nil, hasOldPasswordHash: Bool? = nil, lastName: String? = nil, passwordHistory: [UserPasswordHistory]? = nil, phoneNumbers: [PhoneNumber]? = nil, profilePicUrl: String? = nil, uid: String? = nil, updatedAt: String? = nil, username: String? = nil, id: String? = nil) {
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.phoneNumbers = phoneNumbers
            
            self.emails = emails
            
            self.passwordHistory = passwordHistory
            
            self.gender = gender
            
            self.active = active
            
            self.profilePicUrl = profilePicUrl
            
            self.username = username
            
            self.accountType = accountType
            
            self.uid = uid
            
            self.debug = debug
            
            self.hasOldPasswordHash = hasOldPasswordHash
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    phoneNumbers = try container.decode([PhoneNumber].self, forKey: .phoneNumbers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emails = try container.decode([Email].self, forKey: .emails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    passwordHistory = try container.decode([UserPasswordHistory].self, forKey: .passwordHistory)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    profilePicUrl = try container.decode(String.self, forKey: .profilePicUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    username = try container.decode(String.self, forKey: .username)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    accountType = try container.decode(String.self, forKey: .accountType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    uid = try container.decode(String.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    debug = try container.decode(Debug.self, forKey: .debug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hasOldPasswordHash = try container.decode(Bool.self, forKey: .hasOldPasswordHash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)
            
            
            
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            
            
            
            try? container.encodeIfPresent(passwordHistory, forKey: .passwordHistory)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
            
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(debug, forKey: .debug)
            
            
            
            
            try? container.encodeIfPresent(hasOldPasswordHash, forKey: .hasOldPasswordHash)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}


