

import Foundation
public extension ApplicationClient {
    /*
        Model: UserInfo
        Used By: Order
    */
    class UserInfo: Codable {
        
        public var mobile: String?
        
        public var name: String?
        
        public var email: String?
        
        public var gender: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case mobile = "mobile"
            
            case name = "name"
            
            case email = "email"
            
            case gender = "gender"
            
        }

        public init(email: String? = nil, gender: String? = nil, mobile: String? = nil, name: String? = nil) {
            
            self.mobile = mobile
            
            self.name = name
            
            self.email = email
            
            self.gender = gender
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                mobile = try container.decode(String.self, forKey: .mobile)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
        }
        
    }
}
