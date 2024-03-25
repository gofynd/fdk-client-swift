

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: Address
        Used By: Payment
    */
    class Address: Codable {
        
        public var street: String?
        
        public var zip: String?
        
        public var uid: Int?
        
        public var area: String?
        
        public var city: String?
        
        public var name: String?
        
        public var email: String?
        
        public var phone: String?
        
        public var state: String?
        
        public var address: String?
        
        public var country: String?
        
        public var pincode: String?
        
        public var landmark: String?
        
        public var areaCode: String?
        
        public var addressType: String?
        
        public var countryCode: String?
        
        public var areaCodeSlug: String?
        
        public var deliveryAddressId: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case street = "street"
            
            case zip = "zip"
            
            case uid = "uid"
            
            case area = "area"
            
            case city = "city"
            
            case name = "name"
            
            case email = "email"
            
            case phone = "phone"
            
            case state = "state"
            
            case address = "address"
            
            case country = "country"
            
            case pincode = "pincode"
            
            case landmark = "landmark"
            
            case areaCode = "area_code"
            
            case addressType = "address_type"
            
            case countryCode = "country_code"
            
            case areaCodeSlug = "area_code_slug"
            
            case deliveryAddressId = "delivery_address_id"
            
        }

        public init(address: String? = nil, addressType: String? = nil, area: String? = nil, areaCode: String? = nil, areaCodeSlug: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, deliveryAddressId: Int? = nil, email: String? = nil, landmark: String? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil, street: String? = nil, uid: Int? = nil, zip: String? = nil) {
            
            self.street = street
            
            self.zip = zip
            
            self.uid = uid
            
            self.area = area
            
            self.city = city
            
            self.name = name
            
            self.email = email
            
            self.phone = phone
            
            self.state = state
            
            self.address = address
            
            self.country = country
            
            self.pincode = pincode
            
            self.landmark = landmark
            
            self.areaCode = areaCode
            
            self.addressType = addressType
            
            self.countryCode = countryCode
            
            self.areaCodeSlug = areaCodeSlug
            
            self.deliveryAddressId = deliveryAddressId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                street = try container.decode(String.self, forKey: .street)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                zip = try container.decode(String.self, forKey: .zip)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                uid = try container.decode(Int.self, forKey: .uid)
            
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
                state = try container.decode(String.self, forKey: .state)
            
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
                country = try container.decode(String.self, forKey: .country)
            
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
                landmark = try container.decode(String.self, forKey: .landmark)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                areaCode = try container.decode(String.self, forKey: .areaCode)
            
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
                countryCode = try container.decode(String.self, forKey: .countryCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliveryAddressId = try container.decode(Int.self, forKey: .deliveryAddressId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(street, forKey: .street)
            
            
            
            try? container.encodeIfPresent(zip, forKey: .zip)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
            
            
            try? container.encodeIfPresent(deliveryAddressId, forKey: .deliveryAddressId)
            
            
        }
        
    }
}
