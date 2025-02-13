

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CartUser
        Used By: Payment
    */
    class CartUser: Codable {
        
        public var email: String?
        
        public var gender: String?
        
        public var mobile: String?
        
        public var userId: String?
        
        public var lastName: String?
        
        public var userType: String?
        
        public var firstName: String?
        
        public var isAuthenticated: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case gender = "gender"
            
            case mobile = "mobile"
            
            case userId = "user_id"
            
            case lastName = "last_name"
            
            case userType = "user_type"
            
            case firstName = "first_name"
            
            case isAuthenticated = "is_authenticated"
            
        }

        public init(email: String? = nil, firstName: String? = nil, gender: String? = nil, isAuthenticated: Bool? = nil, lastName: String? = nil, mobile: String? = nil, userId: String? = nil, userType: String? = nil) {
            
            self.email = email
            
            self.gender = gender
            
            self.mobile = mobile
            
            self.userId = userId
            
            self.lastName = lastName
            
            self.userType = userType
            
            self.firstName = firstName
            
            self.isAuthenticated = isAuthenticated
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                email = try container.decode(String.self, forKey: .email)
            
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
                mobile = try container.decode(String.self, forKey: .mobile)
            
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
                lastName = try container.decode(String.self, forKey: .lastName)
            
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
            
            
            
            do {
                firstName = try container.decode(String.self, forKey: .firstName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isAuthenticated = try container.decode(Bool.self, forKey: .isAuthenticated)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            try? container.encodeIfPresent(userType, forKey: .userType)
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            try? container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)
            
            
        }
        
    }
}
