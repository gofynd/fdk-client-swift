

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CustomerDetails
        Used By: Payment
    */
    class CustomerDetails: Codable {
        
        public var name: String?
        
        public var email: String?
        
        public var phone: String?
        
        public var address: Address?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case email = "email"
            
            case phone = "phone"
            
            case address = "address"
            
        }

        public init(address: Address? = nil, email: String? = nil, name: String? = nil, phone: String? = nil) {
            
            self.name = name
            
            self.email = email
            
            self.phone = phone
            
            self.address = address
            
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
            
            
            
            do {
                phone = try container.decode(String.self, forKey: .phone)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                address = try container.decode(Address.self, forKey: .address)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
        }
        
    }
}
