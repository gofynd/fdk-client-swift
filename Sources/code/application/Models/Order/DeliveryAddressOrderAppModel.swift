

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: DeliveryAddress
        Used By: Order
    */
    class DeliveryAddress: Codable {
        
        public var pincode: String?
        
        public var phone: String?
        
        public var latitude: Double?
        
        public var address2: String?
        
        public var landmark: String?
        
        public var area: String?
        
        public var city: String?
        
        public var address: String?
        
        public var addressType: String?
        
        public var longitude: Double?
        
        public var countryIsoCode: String?
        
        public var state: String?
        
        public var createdAt: String?
        
        public var address1: String?
        
        public var displayAddress: String?
        
        public var name: String?
        
        public var contactPerson: String?
        
        public var addressCategory: String?
        
        public var email: String?
        
        public var countryPhoneCode: String?
        
        public var version: String?
        
        public var updatedAt: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case phone = "phone"
            
            case latitude = "latitude"
            
            case address2 = "address2"
            
            case landmark = "landmark"
            
            case area = "area"
            
            case city = "city"
            
            case address = "address"
            
            case addressType = "address_type"
            
            case longitude = "longitude"
            
            case countryIsoCode = "country_iso_code"
            
            case state = "state"
            
            case createdAt = "created_at"
            
            case address1 = "address1"
            
            case displayAddress = "display_address"
            
            case name = "name"
            
            case contactPerson = "contact_person"
            
            case addressCategory = "address_category"
            
            case email = "email"
            
            case countryPhoneCode = "country_phone_code"
            
            case version = "version"
            
            case updatedAt = "updated_at"
            
            case country = "country"
            
        }

        public init(address: String? = nil, address1: String? = nil, address2: String? = nil, addressCategory: String? = nil, addressType: String? = nil, area: String? = nil, city: String? = nil, contactPerson: String? = nil, country: String? = nil, countryIsoCode: String? = nil, countryPhoneCode: String? = nil, createdAt: String? = nil, displayAddress: String? = nil, email: String? = nil, landmark: String? = nil, latitude: Double? = nil, longitude: Double? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil, updatedAt: String? = nil, version: String? = nil) {
            
            self.pincode = pincode
            
            self.phone = phone
            
            self.latitude = latitude
            
            self.address2 = address2
            
            self.landmark = landmark
            
            self.area = area
            
            self.city = city
            
            self.address = address
            
            self.addressType = addressType
            
            self.longitude = longitude
            
            self.countryIsoCode = countryIsoCode
            
            self.state = state
            
            self.createdAt = createdAt
            
            self.address1 = address1
            
            self.displayAddress = displayAddress
            
            self.name = name
            
            self.contactPerson = contactPerson
            
            self.addressCategory = addressCategory
            
            self.email = email
            
            self.countryPhoneCode = countryPhoneCode
            
            self.version = version
            
            self.updatedAt = updatedAt
            
            self.country = country
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                pincode = try container.decode(String.self, forKey: .pincode)
            
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
                latitude = try container.decode(Double.self, forKey: .latitude)
            
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
                landmark = try container.decode(String.self, forKey: .landmark)
            
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
                city = try container.decode(String.self, forKey: .city)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                address = try container.decode(String.self, forKey: .address)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                addressType = try container.decode(String.self, forKey: .addressType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                longitude = try container.decode(Double.self, forKey: .longitude)
            
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
            
            
            
            do {
                state = try container.decode(String.self, forKey: .state)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)
            
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
                displayAddress = try container.decode(String.self, forKey: .displayAddress)
            
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
                contactPerson = try container.decode(String.self, forKey: .contactPerson)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                addressCategory = try container.decode(String.self, forKey: .addressCategory)
            
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
                countryPhoneCode = try container.decode(String.self, forKey: .countryPhoneCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                version = try container.decode(String.self, forKey: .version)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                country = try container.decode(String.self, forKey: .country)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            try? container.encodeIfPresent(displayAddress, forKey: .displayAddress)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
}
