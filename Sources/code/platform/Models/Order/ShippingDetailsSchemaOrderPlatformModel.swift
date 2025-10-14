

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShippingDetailsSchema
        Used By: Order
    */

    class ShippingDetailsSchema: Codable {
        
        
        public var firstName: String?
        
        public var phoneCode: String?
        
        public var country: String?
        
        public var city: String?
        
        public var pincode: String?
        
        public var lastName: String?
        
        public var mobileNumber: String?
        
        public var email: String?
        
        public var state: String?
        
        public var alternateMobileNumber: String?
        
        public var address: String?
        
        public var middleName: String?
        
        public var title: String?
        
        public var houseNo: String?
        
        public var geoLocation: GeoLocationSchema?
        
        public var gender: String?
        
        public var landmark: String?
        
        public var addressType: String?
        
        public var stateCode: String?
        
        public var floorNo: String?
        
        public var alternateEmail: String?
        
        public var address1: String?
        
        public var address2: String?
        
        public var countryIsoCode: String?
        
        public var userId: String?
        
        public var areaCode: String?
        
        public var areaCodeSlug: String?
        
        public var countryPhoneCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case phoneCode = "phone_code"
            
            case country = "country"
            
            case city = "city"
            
            case pincode = "pincode"
            
            case lastName = "last_name"
            
            case mobileNumber = "mobile_number"
            
            case email = "email"
            
            case state = "state"
            
            case alternateMobileNumber = "alternate_mobile_number"
            
            case address = "address"
            
            case middleName = "middle_name"
            
            case title = "title"
            
            case houseNo = "house_no"
            
            case geoLocation = "geo_location"
            
            case gender = "gender"
            
            case landmark = "landmark"
            
            case addressType = "address_type"
            
            case stateCode = "state_code"
            
            case floorNo = "floor_no"
            
            case alternateEmail = "alternate_email"
            
            case address1 = "address1"
            
            case address2 = "address2"
            
            case countryIsoCode = "country_iso_code"
            
            case userId = "user_id"
            
            case areaCode = "area_code"
            
            case areaCodeSlug = "area_code_slug"
            
            case countryPhoneCode = "country_phone_code"
            
        }

        public init(address: String? = nil, address1: String? = nil, address2: String? = nil, addressType: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, areaCode: String? = nil, areaCodeSlug: String? = nil, city: String? = nil, country: String? = nil, countryIsoCode: String? = nil, countryPhoneCode: String? = nil, email: String? = nil, firstName: String? = nil, floorNo: String? = nil, gender: String? = nil, geoLocation: GeoLocationSchema? = nil, houseNo: String? = nil, landmark: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileNumber: String? = nil, phoneCode: String? = nil, pincode: String? = nil, state: String? = nil, stateCode: String? = nil, title: String? = nil, userId: String? = nil) {
            
            self.firstName = firstName
            
            self.phoneCode = phoneCode
            
            self.country = country
            
            self.city = city
            
            self.pincode = pincode
            
            self.lastName = lastName
            
            self.mobileNumber = mobileNumber
            
            self.email = email
            
            self.state = state
            
            self.alternateMobileNumber = alternateMobileNumber
            
            self.address = address
            
            self.middleName = middleName
            
            self.title = title
            
            self.houseNo = houseNo
            
            self.geoLocation = geoLocation
            
            self.gender = gender
            
            self.landmark = landmark
            
            self.addressType = addressType
            
            self.stateCode = stateCode
            
            self.floorNo = floorNo
            
            self.alternateEmail = alternateEmail
            
            self.address1 = address1
            
            self.address2 = address2
            
            self.countryIsoCode = countryIsoCode
            
            self.userId = userId
            
            self.areaCode = areaCode
            
            self.areaCodeSlug = areaCodeSlug
            
            self.countryPhoneCode = countryPhoneCode
            
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
                    phoneCode = try container.decode(String.self, forKey: .phoneCode)
                
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
                    city = try container.decode(String.self, forKey: .city)
                
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
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
                
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
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)
                
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
                    middleName = try container.decode(String.self, forKey: .middleName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    houseNo = try container.decode(String.self, forKey: .houseNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    geoLocation = try container.decode(GeoLocationSchema.self, forKey: .geoLocation)
                
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
                    landmark = try container.decode(String.self, forKey: .landmark)
                
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
                    stateCode = try container.decode(String.self, forKey: .stateCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    floorNo = try container.decode(String.self, forKey: .floorNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    alternateEmail = try container.decode(String.self, forKey: .alternateEmail)
                
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
                    countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
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
                    areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                
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
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(middleName, forKey: .middleName)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(houseNo, forKey: .houseNo)
            
            
            
            
            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(stateCode, forKey: .stateCode)
            
            
            
            
            try? container.encodeIfPresent(floorNo, forKey: .floorNo)
            
            
            
            
            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
            
            
            
            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShippingDetailsSchema
        Used By: Order
    */

    class ShippingDetailsSchema: Codable {
        
        
        public var firstName: String?
        
        public var phoneCode: String?
        
        public var country: String?
        
        public var city: String?
        
        public var pincode: String?
        
        public var lastName: String?
        
        public var mobileNumber: String?
        
        public var email: String?
        
        public var state: String?
        
        public var alternateMobileNumber: String?
        
        public var address: String?
        
        public var middleName: String?
        
        public var title: String?
        
        public var houseNo: String?
        
        public var geoLocation: GeoLocationSchema?
        
        public var gender: String?
        
        public var landmark: String?
        
        public var addressType: String?
        
        public var stateCode: String?
        
        public var floorNo: String?
        
        public var alternateEmail: String?
        
        public var address1: String?
        
        public var address2: String?
        
        public var countryIsoCode: String?
        
        public var userId: String?
        
        public var areaCode: String?
        
        public var areaCodeSlug: String?
        
        public var countryPhoneCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case phoneCode = "phone_code"
            
            case country = "country"
            
            case city = "city"
            
            case pincode = "pincode"
            
            case lastName = "last_name"
            
            case mobileNumber = "mobile_number"
            
            case email = "email"
            
            case state = "state"
            
            case alternateMobileNumber = "alternate_mobile_number"
            
            case address = "address"
            
            case middleName = "middle_name"
            
            case title = "title"
            
            case houseNo = "house_no"
            
            case geoLocation = "geo_location"
            
            case gender = "gender"
            
            case landmark = "landmark"
            
            case addressType = "address_type"
            
            case stateCode = "state_code"
            
            case floorNo = "floor_no"
            
            case alternateEmail = "alternate_email"
            
            case address1 = "address1"
            
            case address2 = "address2"
            
            case countryIsoCode = "country_iso_code"
            
            case userId = "user_id"
            
            case areaCode = "area_code"
            
            case areaCodeSlug = "area_code_slug"
            
            case countryPhoneCode = "country_phone_code"
            
        }

        public init(address: String? = nil, address1: String? = nil, address2: String? = nil, addressType: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, areaCode: String? = nil, areaCodeSlug: String? = nil, city: String? = nil, country: String? = nil, countryIsoCode: String? = nil, countryPhoneCode: String? = nil, email: String? = nil, firstName: String? = nil, floorNo: String? = nil, gender: String? = nil, geoLocation: GeoLocationSchema? = nil, houseNo: String? = nil, landmark: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileNumber: String? = nil, phoneCode: String? = nil, pincode: String? = nil, state: String? = nil, stateCode: String? = nil, title: String? = nil, userId: String? = nil) {
            
            self.firstName = firstName
            
            self.phoneCode = phoneCode
            
            self.country = country
            
            self.city = city
            
            self.pincode = pincode
            
            self.lastName = lastName
            
            self.mobileNumber = mobileNumber
            
            self.email = email
            
            self.state = state
            
            self.alternateMobileNumber = alternateMobileNumber
            
            self.address = address
            
            self.middleName = middleName
            
            self.title = title
            
            self.houseNo = houseNo
            
            self.geoLocation = geoLocation
            
            self.gender = gender
            
            self.landmark = landmark
            
            self.addressType = addressType
            
            self.stateCode = stateCode
            
            self.floorNo = floorNo
            
            self.alternateEmail = alternateEmail
            
            self.address1 = address1
            
            self.address2 = address2
            
            self.countryIsoCode = countryIsoCode
            
            self.userId = userId
            
            self.areaCode = areaCode
            
            self.areaCodeSlug = areaCodeSlug
            
            self.countryPhoneCode = countryPhoneCode
            
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
                    phoneCode = try container.decode(String.self, forKey: .phoneCode)
                
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
                    city = try container.decode(String.self, forKey: .city)
                
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
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mobileNumber = try container.decode(String.self, forKey: .mobileNumber)
                
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
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)
                
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
                    middleName = try container.decode(String.self, forKey: .middleName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    houseNo = try container.decode(String.self, forKey: .houseNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    geoLocation = try container.decode(GeoLocationSchema.self, forKey: .geoLocation)
                
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
                    landmark = try container.decode(String.self, forKey: .landmark)
                
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
                    stateCode = try container.decode(String.self, forKey: .stateCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    floorNo = try container.decode(String.self, forKey: .floorNo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    alternateEmail = try container.decode(String.self, forKey: .alternateEmail)
                
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
                    countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
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
                    areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                
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
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encodeIfPresent(phoneCode, forKey: .phoneCode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(lastName, forKey: .lastName)
            
            
            
            
            try? container.encodeIfPresent(mobileNumber, forKey: .mobileNumber)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(middleName, forKey: .middleName)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(houseNo, forKey: .houseNo)
            
            
            
            
            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
            
            
            
            
            try? container.encodeIfPresent(gender, forKey: .gender)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(stateCode, forKey: .stateCode)
            
            
            
            
            try? container.encodeIfPresent(floorNo, forKey: .floorNo)
            
            
            
            
            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
            
            
            
            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)
            
            
        }
        
    }
}


