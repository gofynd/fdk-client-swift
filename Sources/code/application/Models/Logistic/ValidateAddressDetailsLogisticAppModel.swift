

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ValidateAddressDetails
        Used By: Logistic
    */
    class ValidateAddressDetails: Codable {
        
        public var address: String?
        
        public var addressMeta: [String: Any]?
        
        public var address1: String?
        
        public var address2: String?
        
        public var area: String?
        
        public var landmark: String?
        
        public var pincode: String?
        
        public var sector: String?
        
        public var city: String?
        
        public var state: String?
        
        public var name: String?
        
        public var phone: String?
        
        public var email: String?
        
        public var countryIsoCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case addressMeta = "address_meta"
            
            case address1 = "address1"
            
            case address2 = "address2"
            
            case area = "area"
            
            case landmark = "landmark"
            
            case pincode = "pincode"
            
            case sector = "sector"
            
            case city = "city"
            
            case state = "state"
            
            case name = "name"
            
            case phone = "phone"
            
            case email = "email"
            
            case countryIsoCode = "country_iso_code"
            
        }

        public init(address: String? = nil, address1: String? = nil, address2: String? = nil, addressMeta: [String: Any]? = nil, area: String? = nil, city: String? = nil, countryIsoCode: String? = nil, email: String? = nil, landmark: String? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, sector: String? = nil, state: String? = nil) {
            
            self.address = address
            
            self.addressMeta = addressMeta
            
            self.address1 = address1
            
            self.address2 = address2
            
            self.area = area
            
            self.landmark = landmark
            
            self.pincode = pincode
            
            self.sector = sector
            
            self.city = city
            
            self.state = state
            
            self.name = name
            
            self.phone = phone
            
            self.email = email
            
            self.countryIsoCode = countryIsoCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                address = try container.decode(String.self, forKey: .address)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                addressMeta = try container.decode([String: Any].self, forKey: .addressMeta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                address1 = try container.decode(String.self, forKey: .address1)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                address2 = try container.decode(String.self, forKey: .address2)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                area = try container.decode(String.self, forKey: .area)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                landmark = try container.decode(String.self, forKey: .landmark)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pincode = try container.decode(String.self, forKey: .pincode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sector = try container.decode(String.self, forKey: .sector)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                city = try container.decode(String.self, forKey: .city)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                state = try container.decode(String.self, forKey: .state)
            
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
                phone = try container.decode(String.self, forKey: .phone)
            
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
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            try? container.encodeIfPresent(addressMeta, forKey: .addressMeta)
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            try? container.encodeIfPresent(sector, forKey: .sector)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
        }
        
    }
}
