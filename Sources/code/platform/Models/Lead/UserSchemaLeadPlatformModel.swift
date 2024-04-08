

import Foundation


public extension PlatformClient.Lead {
    /*
        Model: UserSchema
        Used By: Lead
    */

    class UserSchema: Codable {
        
        
        public var applicationId: String?
        
        public var userId: String?
        
        public var firstName: String?
        
        public var meta: [String: Any]?
        
        public var lastName: String?
        
        public var phoneNumbers: [PhoneNumber]?
        
        public var emails: [Email]?
        
        public var gender: String?
        
        public var dob: String?
        
        public var active: Bool?
        
        public var profilePicUrl: String?
        
        public var username: String?
        
        public var accountType: String?
        
        public var id: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var externalId: String?
        
        public var rrId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case userId = "user_id"
            
            case firstName = "first_name"
            
            case meta = "meta"
            
            case lastName = "last_name"
            
            case phoneNumbers = "phone_numbers"
            
            case emails = "emails"
            
            case gender = "gender"
            
            case dob = "dob"
            
            case active = "active"
            
            case profilePicUrl = "profile_pic_url"
            
            case username = "username"
            
            case accountType = "account_type"
            
            case id = "_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case externalId = "external_id"
            
            case rrId = "rr_id"
            
        }

        public init(accountType: String? = nil, active: Bool? = nil, applicationId: String? = nil, createdAt: String? = nil, dob: String? = nil, emails: [Email]? = nil, externalId: String? = nil, firstName: String? = nil, gender: String? = nil, lastName: String? = nil, meta: [String: Any]? = nil, phoneNumbers: [PhoneNumber]? = nil, profilePicUrl: String? = nil, rrId: String? = nil, updatedAt: String? = nil, username: String? = nil, userId: String? = nil, id: String? = nil) {
            
            self.applicationId = applicationId
            
            self.userId = userId
            
            self.firstName = firstName
            
            self.meta = meta
            
            self.lastName = lastName
            
            self.phoneNumbers = phoneNumbers
            
            self.emails = emails
            
            self.gender = gender
            
            self.dob = dob
            
            self.active = active
            
            self.profilePicUrl = profilePicUrl
            
            self.username = username
            
            self.accountType = accountType
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.externalId = externalId
            
            self.rrId = rrId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
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
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dob = try container.decode(String.self, forKey: .dob)
                
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
                
            
            
                do {
                    externalId = try container.decode(String.self, forKey: .externalId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rrId = try container.decode(String.self, forKey: .rrId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)
            
            
            
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(dob, forKey: .dob)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
            
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(externalId, forKey: .externalId)
            
            
            
            
            try? container.encodeIfPresent(rrId, forKey: .rrId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Lead {
    /*
        Model: UserSchema
        Used By: Lead
    */

    class UserSchema: Codable {
        
        
        public var applicationId: String?
        
        public var userId: String?
        
        public var firstName: String?
        
        public var meta: [String: Any]?
        
        public var lastName: String?
        
        public var phoneNumbers: [PhoneNumber]?
        
        public var emails: [Email]?
        
        public var gender: String?
        
        public var dob: String?
        
        public var active: Bool?
        
        public var profilePicUrl: String?
        
        public var username: String?
        
        public var accountType: String?
        
        public var id: String?
        
        public var createdAt: String?
        
        public var updatedAt: String?
        
        public var externalId: String?
        
        public var rrId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationId = "application_id"
            
            case userId = "user_id"
            
            case firstName = "first_name"
            
            case meta = "meta"
            
            case lastName = "last_name"
            
            case phoneNumbers = "phone_numbers"
            
            case emails = "emails"
            
            case gender = "gender"
            
            case dob = "dob"
            
            case active = "active"
            
            case profilePicUrl = "profile_pic_url"
            
            case username = "username"
            
            case accountType = "account_type"
            
            case id = "_id"
            
            case createdAt = "created_at"
            
            case updatedAt = "updated_at"
            
            case externalId = "external_id"
            
            case rrId = "rr_id"
            
        }

        public init(accountType: String? = nil, active: Bool? = nil, applicationId: String? = nil, createdAt: String? = nil, dob: String? = nil, emails: [Email]? = nil, externalId: String? = nil, firstName: String? = nil, gender: String? = nil, lastName: String? = nil, meta: [String: Any]? = nil, phoneNumbers: [PhoneNumber]? = nil, profilePicUrl: String? = nil, rrId: String? = nil, updatedAt: String? = nil, username: String? = nil, userId: String? = nil, id: String? = nil) {
            
            self.applicationId = applicationId
            
            self.userId = userId
            
            self.firstName = firstName
            
            self.meta = meta
            
            self.lastName = lastName
            
            self.phoneNumbers = phoneNumbers
            
            self.emails = emails
            
            self.gender = gender
            
            self.dob = dob
            
            self.active = active
            
            self.profilePicUrl = profilePicUrl
            
            self.username = username
            
            self.accountType = accountType
            
            self.id = id
            
            self.createdAt = createdAt
            
            self.updatedAt = updatedAt
            
            self.externalId = externalId
            
            self.rrId = rrId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
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
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    dob = try container.decode(String.self, forKey: .dob)
                
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
                
            
            
                do {
                    externalId = try container.decode(String.self, forKey: .externalId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    rrId = try container.decode(String.self, forKey: .rrId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)
            
            
            
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(dob, forKey: .dob)
            
            
            
            
            try? container.encodeIfPresent(active, forKey: .active)
            
            
            
            
            try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
            
            
            try? container.encodeIfPresent(accountType, forKey: .accountType)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(externalId, forKey: .externalId)
            
            
            
            
            try? container.encodeIfPresent(rrId, forKey: .rrId)
            
            
        }
        
    }
}


