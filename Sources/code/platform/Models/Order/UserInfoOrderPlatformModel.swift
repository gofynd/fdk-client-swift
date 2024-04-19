

import Foundation


public extension PlatformClient.Order {
    /*
        Model: UserInfo
        Used By: Order
    */

    class UserInfo: Codable {
        
        
        public var userId: String?
        
        public var userType: String?
        
        public var primaryEmail: String
        
        public var gender: String?
        
        public var firstName: String
        
        public var lastName: String?
        
        public var primaryMobileNumber: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case userType = "user_type"
            
            case primaryEmail = "primary_email"
            
            case gender = "gender"
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case primaryMobileNumber = "primary_mobile_number"
            
        }

        public init(firstName: String, gender: String? = nil, lastName: String? = nil, primaryEmail: String, primaryMobileNumber: String, userId: String? = nil, userType: String? = nil) {
            
            self.userId = userId
            
            self.userType = userType
            
            self.primaryEmail = primaryEmail
            
            self.gender = gender
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.primaryMobileNumber = primaryMobileNumber
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userType = try container.decode(String.self, forKey: .userType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                primaryEmail = try container.decode(String.self, forKey: .primaryEmail)
                
            
            
            
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                firstName = try container.decode(String.self, forKey: .firstName)
                
            
            
            
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(userType, forKey: .userType)
            
            
            
            
            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: UserInfo
        Used By: Order
    */

    class UserInfo: Codable {
        
        
        public var userId: String?
        
        public var userType: String?
        
        public var primaryEmail: String
        
        public var gender: String?
        
        public var firstName: String
        
        public var lastName: String?
        
        public var primaryMobileNumber: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case userType = "user_type"
            
            case primaryEmail = "primary_email"
            
            case gender = "gender"
            
            case firstName = "first_name"
            
            case lastName = "last_name"
            
            case primaryMobileNumber = "primary_mobile_number"
            
        }

        public init(firstName: String, gender: String? = nil, lastName: String? = nil, primaryEmail: String, primaryMobileNumber: String, userId: String? = nil, userType: String? = nil) {
            
            self.userId = userId
            
            self.userType = userType
            
            self.primaryEmail = primaryEmail
            
            self.gender = gender
            
            self.firstName = firstName
            
            self.lastName = lastName
            
            self.primaryMobileNumber = primaryMobileNumber
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userType = try container.decode(String.self, forKey: .userType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                primaryEmail = try container.decode(String.self, forKey: .primaryEmail)
                
            
            
            
                do {
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                firstName = try container.decode(String.self, forKey: .firstName)
                
            
            
            
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(userType, forKey: .userType)
            
            
            
            
            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)
            
            
        }
        
    }
}


