

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: RegisterRequiredFields
        Used By: User
    */

    class RegisterRequiredFields: Codable {
        
        
        public var email: RegisterRequiredFieldsEmail?
        
        public var mobile: RegisterRequiredFieldsMobile?
        
        public var password: PlatformPassword?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case mobile = "mobile"
            
            case password = "password"
            
        }

        public init(email: RegisterRequiredFieldsEmail? = nil, mobile: RegisterRequiredFieldsMobile? = nil, password: PlatformPassword? = nil) {
            
            self.email = email
            
            self.mobile = mobile
            
            self.password = password
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    email = try container.decode(RegisterRequiredFieldsEmail.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobile = try container.decode(RegisterRequiredFieldsMobile.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    password = try container.decode(PlatformPassword.self, forKey: .password)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(password, forKey: .password)
            
            
        }
        
    }
}


