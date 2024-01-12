

import Foundation


public extension PlatformClient.Order {
    /*
        Model: UserDetails
        Used By: Order
    */

    class UserDetails: Codable {
        
        
        public var userOid: String?
        
        public var externalCustomerId: String?
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var mobile: String?
        
        public var email: String?
        
        public var isAnonymousUser: Bool?
        
        public var gender: String?
        
        public var mongoUserId: String?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case userOid = "user_oid"
            
            case externalCustomerId = "external_customer_id"
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case mobile = "mobile"
            
            case email = "email"
            
            case isAnonymousUser = "is_anonymous_user"
            
            case gender = "gender"
            
            case mongoUserId = "mongo_user_id"
            
            case meta = "meta"
            
        }

        public init(email: String? = nil, externalCustomerId: String? = nil, firstName: String? = nil, gender: String? = nil, isAnonymousUser: Bool? = nil, lastName: String? = nil, meta: [String: Any]? = nil, mobile: String? = nil, mongoUserId: String? = nil, userOid: String? = nil) {
            
            self.userOid = userOid
            
            self.externalCustomerId = externalCustomerId
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.mobile = mobile
            
            self.email = email
            
            self.isAnonymousUser = isAnonymousUser
            
            self.gender = gender
            
            self.mongoUserId = mongoUserId
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userOid = try container.decode(String.self, forKey: .userOid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalCustomerId = try container.decode(String.self, forKey: .externalCustomerId)
                
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
                    mobile = try container.decode(String.self, forKey: .mobile)
                
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
                
            
            
                do {
                    isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)
                
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
                    mongoUserId = try container.decode(String.self, forKey: .mongoUserId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(userOid, forKey: .userOid)
            
            
            
            
            try? container.encode(externalCustomerId, forKey: .externalCustomerId)
            
            
            
            
            try? container.encode(firstName, forKey: .firstName)
            
            
            
            
            try? container.encode(lastName, forKey: .lastName)
            
            
            
            
            try? container.encode(mobile, forKey: .mobile)
            
            
            
            
            try? container.encode(email, forKey: .email)
            
            
            
            
            try? container.encode(isAnonymousUser, forKey: .isAnonymousUser)
            
            
            
            
            try? container.encode(gender, forKey: .gender)
            
            
            
            
            try? container.encode(mongoUserId, forKey: .mongoUserId)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: UserDetails
        Used By: Order
    */

    class UserDetails: Codable {
        
        
        public var userOid: String?
        
        public var externalCustomerId: String?
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var mobile: String?
        
        public var email: String?
        
        public var isAnonymousUser: Bool?
        
        public var gender: String?
        
        public var mongoUserId: String?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case userOid = "user_oid"
            
            case externalCustomerId = "external_customer_id"
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case mobile = "mobile"
            
            case email = "email"
            
            case isAnonymousUser = "is_anonymous_user"
            
            case gender = "gender"
            
            case mongoUserId = "mongo_user_id"
            
            case meta = "meta"
            
        }

        public init(email: String? = nil, externalCustomerId: String? = nil, firstName: String? = nil, gender: String? = nil, isAnonymousUser: Bool? = nil, lastName: String? = nil, meta: [String: Any]? = nil, mobile: String? = nil, mongoUserId: String? = nil, userOid: String? = nil) {
            
            self.userOid = userOid
            
            self.externalCustomerId = externalCustomerId
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.mobile = mobile
            
            self.email = email
            
            self.isAnonymousUser = isAnonymousUser
            
            self.gender = gender
            
            self.mongoUserId = mongoUserId
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userOid = try container.decode(String.self, forKey: .userOid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    externalCustomerId = try container.decode(String.self, forKey: .externalCustomerId)
                
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
                    mobile = try container.decode(String.self, forKey: .mobile)
                
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
                
            
            
                do {
                    isAnonymousUser = try container.decode(Bool.self, forKey: .isAnonymousUser)
                
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
                    mongoUserId = try container.decode(String.self, forKey: .mongoUserId)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(userOid, forKey: .userOid)
            
            
            
            
            try? container.encode(externalCustomerId, forKey: .externalCustomerId)
            
            
            
            
            try? container.encode(firstName, forKey: .firstName)
            
            
            
            
            try? container.encode(lastName, forKey: .lastName)
            
            
            
            
            try? container.encode(mobile, forKey: .mobile)
            
            
            
            
            try? container.encode(email, forKey: .email)
            
            
            
            
            try? container.encode(isAnonymousUser, forKey: .isAnonymousUser)
            
            
            
            
            try? container.encode(gender, forKey: .gender)
            
            
            
            
            try? container.encode(mongoUserId, forKey: .mongoUserId)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
        }
        
    }
}


