

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: CreateUserRequestSchema
        Used By: User
    */

    class CreateUserRequestSchema: Codable {
        
        
        public var phoneNumber: String
        
        public var email: String?
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var gender: String?
        
        public var username: String?
        
        public var meta: [String: Any]?
        
        public var externalId: String?
        
        public var rrId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phoneNumber = "phone_number"
            
            case email = "email"
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case gender = "gender"
            
            case username = "username"
            
            case meta = "meta"
            
            case externalId = "external_id"
            
            case rrId = "rr_id"
            
        }

        public init(email: String? = nil, externalId: String? = nil, firstName: String? = nil, gender: String? = nil, lastName: String? = nil, meta: [String: Any]? = nil, phoneNumber: String, rrId: String? = nil, username: String? = nil) {
            
            self.phoneNumber = phoneNumber
            
            self.email = email
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.gender = gender
            
            self.username = username
            
            self.meta = meta
            
            self.externalId = externalId
            
            self.rrId = rrId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
            
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
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
                    gender = try container.decode(String.self, forKey: .gender)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
            
            
            
            try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(username, forKey: .username)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(externalId, forKey: .externalId)
            
            
            
            
            try? container.encodeIfPresent(rrId, forKey: .rrId)
            
            
        }
        
    }
}


