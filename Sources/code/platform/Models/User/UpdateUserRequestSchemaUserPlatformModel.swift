

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UpdateUserRequestSchema
        Used By: User
    */

    class UpdateUserRequestSchema: Codable {
        
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var gender: String?
        
        public var externalId: String?
        
        public var rrId: String?
        
        public var meta: [String: Any]?
        
        public var phoneNumbers: [UserPhoneNumbers]?
        
        public var emails: [UserEmails]?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case gender = "gender"
            
            case externalId = "external_id"
            
            case rrId = "rr_id"
            
            case meta = "meta"
            
            case phoneNumbers = "phone_numbers"
            
            case emails = "emails"
            
        }

        public init(emails: [UserEmails]? = nil, externalId: String? = nil, firstName: String? = nil, gender: String? = nil, lastName: String? = nil, meta: [String: Any]? = nil, phoneNumbers: [UserPhoneNumbers]? = nil, rrId: String? = nil) {
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.gender = gender
            
            self.externalId = externalId
            
            self.rrId = rrId
            
            self.meta = meta
            
            self.phoneNumbers = phoneNumbers
            
            self.emails = emails
            
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
                    gender = try container.decode(String.self, forKey: .gender)
                
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
                
            
            
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(externalId, forKey: .externalId)
            
            
            
            
            try? container.encodeIfPresent(rrId, forKey: .rrId)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)
            
            
            
            
            try? container.encodeIfPresent(emails, forKey: .emails)
            
            
        }
        
    }
}


