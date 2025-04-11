

import Foundation


public extension PlatformClient.Order {
    /*
        Model: UserDataInfo
        Used By: Order
    */

    class UserDataInfo: Codable {
        
        
        public var id: Int?
        
        public var userOid: String?
        
        public var mongoUserId: String?
        
        public var externalCustomerId: String?
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var mobile: String?
        
        public var email: String?
        
        public var meta: String?
        
        public var isAnonymousUser: Bool?
        
        public var avisUserId: String?
        
        public var name: String?
        
        public var gender: String?
        
        public var countryPhoneCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case userOid = "user_oid"
            
            case mongoUserId = "mongo_user_id"
            
            case externalCustomerId = "external_customer_id"
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case mobile = "mobile"
            
            case email = "email"
            
            case meta = "meta"
            
            case isAnonymousUser = "is_anonymous_user"
            
            case avisUserId = "avis_user_id"
            
            case name = "name"
            
            case gender = "gender"
            
            case countryPhoneCode = "country_phone_code"
            
        }

        public init(avisUserId: String? = nil, countryPhoneCode: String? = nil, email: String? = nil, externalCustomerId: String? = nil, firstName: String? = nil, gender: String? = nil, id: Int? = nil, isAnonymousUser: Bool? = nil, lastName: String? = nil, meta: String? = nil, mobile: String? = nil, mongoUserId: String? = nil, name: String? = nil, userOid: String? = nil) {
            
            self.id = id
            
            self.userOid = userOid
            
            self.mongoUserId = mongoUserId
            
            self.externalCustomerId = externalCustomerId
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.mobile = mobile
            
            self.email = email
            
            self.meta = meta
            
            self.isAnonymousUser = isAnonymousUser
            
            self.avisUserId = avisUserId
            
            self.name = name
            
            self.gender = gender
            
            self.countryPhoneCode = countryPhoneCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userOid = try container.decode(String.self, forKey: .userOid)
                
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
                    meta = try container.decode(String.self, forKey: .meta)
                
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
                    avisUserId = try container.decode(String.self, forKey: .avisUserId)
                
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
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryPhoneCode = try container.decode(String.self, forKey: .countryPhoneCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(userOid, forKey: .userOid)
            
            
            
            
            try? container.encodeIfPresent(mongoUserId, forKey: .mongoUserId)
            
            
            
            
            try? container.encodeIfPresent(externalCustomerId, forKey: .externalCustomerId)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)
            
            
            
            
            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: UserDataInfo
        Used By: Order
    */

    class UserDataInfo: Codable {
        
        
        public var id: Int?
        
        public var userOid: String?
        
        public var mongoUserId: String?
        
        public var externalCustomerId: String?
        
        public var firstName: String?
        
        public var lastName: String?
        
        public var mobile: String?
        
        public var email: String?
        
        public var meta: String?
        
        public var isAnonymousUser: Bool?
        
        public var avisUserId: String?
        
        public var name: String?
        
        public var gender: String?
        
        public var countryPhoneCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case userOid = "user_oid"
            
            case mongoUserId = "mongo_user_id"
            
            case externalCustomerId = "external_customer_id"
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case mobile = "mobile"
            
            case email = "email"
            
            case meta = "meta"
            
            case isAnonymousUser = "is_anonymous_user"
            
            case avisUserId = "avis_user_id"
            
            case name = "name"
            
            case gender = "gender"
            
            case countryPhoneCode = "country_phone_code"
            
        }

        public init(avisUserId: String? = nil, countryPhoneCode: String? = nil, email: String? = nil, externalCustomerId: String? = nil, firstName: String? = nil, gender: String? = nil, id: Int? = nil, isAnonymousUser: Bool? = nil, lastName: String? = nil, meta: String? = nil, mobile: String? = nil, mongoUserId: String? = nil, name: String? = nil, userOid: String? = nil) {
            
            self.id = id
            
            self.userOid = userOid
            
            self.mongoUserId = mongoUserId
            
            self.externalCustomerId = externalCustomerId
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.mobile = mobile
            
            self.email = email
            
            self.meta = meta
            
            self.isAnonymousUser = isAnonymousUser
            
            self.avisUserId = avisUserId
            
            self.name = name
            
            self.gender = gender
            
            self.countryPhoneCode = countryPhoneCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userOid = try container.decode(String.self, forKey: .userOid)
                
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
                    meta = try container.decode(String.self, forKey: .meta)
                
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
                    avisUserId = try container.decode(String.self, forKey: .avisUserId)
                
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
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    countryPhoneCode = try container.decode(String.self, forKey: .countryPhoneCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(userOid, forKey: .userOid)
            
            
            
            
            try? container.encodeIfPresent(mongoUserId, forKey: .mongoUserId)
            
            
            
            
            try? container.encodeIfPresent(externalCustomerId, forKey: .externalCustomerId)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(isAnonymousUser, forKey: .isAnonymousUser)
            
            
            
            
            try? container.encodeIfPresent(avisUserId, forKey: .avisUserId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)
            
            
        }
        
    }
}


