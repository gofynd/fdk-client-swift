

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CustomerDetails
        Used By: Cart
    */
    class CustomerDetails: Codable {
        
        public var email: String?
        
        public var mobile: String
        
        public var name: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case mobile = "mobile"
            
            case name = "name"
            
        }

        public init(email: String? = nil, mobile: String, name: String? = nil) {
            
            self.email = email
            
            self.mobile = mobile
            
            self.name = name
            
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
            
            
            
            mobile = try container.decode(String.self, forKey: .mobile)
            
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
}
