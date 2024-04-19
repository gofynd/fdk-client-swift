

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CustomerDetails
        Used By: Cart
    */

    class CustomerDetails: Codable {
        
        
        public var name: String?
        
        public var email: String?
        
        public var mobile: String
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case email = "email"
            
            case mobile = "mobile"
            
        }

        public init(email: String? = nil, mobile: String, name: String? = nil) {
            
            self.name = name
            
            self.email = email
            
            self.mobile = mobile
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                
            
            
                mobile = try container.decode(String.self, forKey: .mobile)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encode(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
        }
        
    }
}


