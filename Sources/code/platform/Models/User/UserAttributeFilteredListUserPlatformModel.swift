

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserAttributeFilteredList
        Used By: User
    */

    class UserAttributeFilteredList: Codable {
        
        
        public var id: String?
        
        public var username: String?
        
        public var phoneNumbers: [UserPhoneNumbers]?
        
        public var emails: [UserEmails]?
        
        public var gender: String?
        
        public var active: Bool?
        
        public var archive: Bool?
        
        public var status: String?
        
        public var attributes: [UserAttribute]?
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var accountType: String?
        
        public var profilePicUrl: String?
        
        public var hasOldPasswordHash: Bool?
        
        public var userId: String?
        
        public var applicationId: String?
        
        public var isEncrypted: Bool?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case username = "username"
            
            case phoneNumbers = "phone_numbers"
            
            case emails = "emails"
            
            case gender = "gender"
            
            case active = "active"
            
            case archive = "archive"
            
            case status = "status"
            
            case attributes = "attributes"
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case accountType = "account_type"
            
            case profilePicUrl = "profile_pic_url"
            
            case hasOldPasswordHash = "has_old_password_hash"
            
            case userId = "user_id"
            
            case applicationId = "application_id"
            
            case isEncrypted = "is_encrypted"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
        }

        public init(accountType: String? = nil, active: Bool? = nil, applicationId: String? = nil, archive: Bool? = nil, attributes: [UserAttribute]? = nil, createdAt: String? = nil, emails: [UserEmails]? = nil, firstName: String? = nil, gender: String? = nil, hasOldPasswordHash: Bool? = nil, isEncrypted: Bool? = nil, lastName: String? = nil, phoneNumbers: [UserPhoneNumbers]? = nil, profilePicUrl: String? = nil, status: String? = nil, updatedAt: String? = nil, username: String? = nil, userId: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.username = username
            
            self.phoneNumbers = phoneNumbers
            
            self.emails = emails
            
            self.gender = gender
            
            self.active = active
            
            self.archive = archive
            
            self.status = status
            
            self.attributes = attributes
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.accountType = accountType
            
            self.profilePicUrl = profilePicUrl
            
            self.hasOldPasswordHash = hasOldPasswordHash
            
            self.userId = userId
            
            self.applicationId = applicationId
            
            self.isEncrypted = isEncrypted
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                    phoneNumbers = try container.decode([UserPhoneNumbers].self, forKey: .phoneNumbers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    emails = try container.decode([UserEmails].self, forKey: .emails)
                
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
                    archive = try container.decode(Bool.self, forKey: .archive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    attributes = try container.decode([UserAttribute].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
                    accountType = try container.decode(String.self, forKey: .accountType)
                
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
                    hasOldPasswordHash = try container.decode(Bool.self, forKey: .hasOldPasswordHash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isEncrypted = try container.decode(Bool.self, forKey: .isEncrypted)
                
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
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
            
            
            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)
            
            
            
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(archive, forKey: .archive)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            
            
            
            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
            
            
            
            
            try? container.encodeIfPresent(hasOldPasswordHash, forKey: .hasOldPasswordHash)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(isEncrypted, forKey: .isEncrypted)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
        }
        
    }
}


