

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PlatformAlternatePickupPerson
        Used By: Cart
    */

    class PlatformAlternatePickupPerson: Codable {
        
        
        public var enabled: Bool?
        
        public var name: String?
        
        public var email: String?
        
        public var phone: String?
        
        public var countryPhoneCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case name = "name"
            
            case email = "email"
            
            case phone = "phone"
            
            case countryPhoneCode = "country_phone_code"
            
        }

        public init(countryPhoneCode: String? = nil, email: String? = nil, enabled: Bool? = nil, name: String? = nil, phone: String? = nil) {
            
            self.enabled = enabled
            
            self.name = name
            
            self.email = email
            
            self.phone = phone
            
            self.countryPhoneCode = countryPhoneCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
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
                    phone = try container.decode(String.self, forKey: .phone)
                
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
            
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)
            
            
        }
        
    }
}


