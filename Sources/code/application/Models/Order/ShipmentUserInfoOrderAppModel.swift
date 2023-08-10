

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ShipmentUserInfo
        Used By: Order
    */
    class ShipmentUserInfo: Codable {
        
        public var firstName: String?
        
        public var gender: String?
        
        public var name: String?
        
        public var lastName: String?
        
        public var mobile: String?
        
        public var email: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case gender = "gender"
            
            case name = "name"
            
            case lastName = "last_name"
            
            case mobile = "mobile"
            
            case email = "email"
            
        }

        public init(email: String? = nil, firstName: String? = nil, gender: String? = nil, lastName: String? = nil, mobile: String? = nil, name: String? = nil) {
            
            self.firstName = firstName
            
            self.gender = gender
            
            self.name = name
            
            self.lastName = lastName
            
            self.mobile = mobile
            
            self.email = email
            
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
                gender = try container.decode(String.self, forKey: .gender)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
        }
        
    }
}
