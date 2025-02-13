

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AddressDetail
        Used By: Payment
    */

    class AddressDetail: Codable {
        
        
        public var line1: String?
        
        public var line2: String?
        
        public var googleMapPoint: GoogleMapPoint?
        
        public var landmark: String?
        
        public var phone: String?
        
        public var countryIsoCode: String?
        
        public var areaCode: String?
        
        public var country: String
        
        public var expireAt: String?
        
        public var geoLocation: [String: Any]?
        
        public var state: String
        
        public var area: String?
        
        public var gAddressId: String?
        
        public var areaCodeSlug: String?
        
        public var countryPhoneCode: String?
        
        public var name: String?
        
        public var addressType: String?
        
        public var address: String?
        
        public var email: String?
        
        public var city: String
        
        public var tags: [[String: Any]]?
        
        public var pincode: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case line1 = "line1"
            
            case line2 = "line2"
            
            case googleMapPoint = "google_map_point"
            
            case landmark = "landmark"
            
            case phone = "phone"
            
            case countryIsoCode = "country_iso_code"
            
            case areaCode = "area_code"
            
            case country = "country"
            
            case expireAt = "expire_at"
            
            case geoLocation = "geo_location"
            
            case state = "state"
            
            case area = "area"
            
            case gAddressId = "g_address_id"
            
            case areaCodeSlug = "area_code_slug"
            
            case countryPhoneCode = "country_phone_code"
            
            case name = "name"
            
            case addressType = "address_type"
            
            case address = "address"
            
            case email = "email"
            
            case city = "city"
            
            case tags = "tags"
            
            case pincode = "pincode"
            
            case type = "type"
            
        }

        public init(address: String? = nil, addressType: String? = nil, area: String? = nil, areaCode: String? = nil, areaCodeSlug: String? = nil, city: String, country: String, countryIsoCode: String? = nil, countryPhoneCode: String? = nil, email: String? = nil, expireAt: String? = nil, geoLocation: [String: Any]? = nil, googleMapPoint: GoogleMapPoint? = nil, gAddressId: String? = nil, landmark: String? = nil, line1: String? = nil, line2: String? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, state: String, tags: [[String: Any]]? = nil, type: String? = nil) {
            
            self.line1 = line1
            
            self.line2 = line2
            
            self.googleMapPoint = googleMapPoint
            
            self.landmark = landmark
            
            self.phone = phone
            
            self.countryIsoCode = countryIsoCode
            
            self.areaCode = areaCode
            
            self.country = country
            
            self.expireAt = expireAt
            
            self.geoLocation = geoLocation
            
            self.state = state
            
            self.area = area
            
            self.gAddressId = gAddressId
            
            self.areaCodeSlug = areaCodeSlug
            
            self.countryPhoneCode = countryPhoneCode
            
            self.name = name
            
            self.addressType = addressType
            
            self.address = address
            
            self.email = email
            
            self.city = city
            
            self.tags = tags
            
            self.pincode = pincode
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    line1 = try container.decode(String.self, forKey: .line1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    line2 = try container.decode(String.self, forKey: .line2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    googleMapPoint = try container.decode(GoogleMapPoint.self, forKey: .googleMapPoint)
                
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
                    phone = try container.decode(String.self, forKey: .phone)
                
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
                    areaCode = try container.decode(String.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    expireAt = try container.decode(String.self, forKey: .expireAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    geoLocation = try container.decode([String: Any].self, forKey: .geoLocation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                do {
                    area = try container.decode(String.self, forKey: .area)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gAddressId = try container.decode(String.self, forKey: .gAddressId)
                
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
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                    address = try container.decode(String.self, forKey: .address)
                
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
                
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                do {
                    tags = try container.decode([[String: Any]].self, forKey: .tags)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(line1, forKey: .line1)
            
            
            
            
            try? container.encodeIfPresent(line2, forKey: .line2)
            
            
            
            
            try? container.encodeIfPresent(googleMapPoint, forKey: .googleMapPoint)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(expireAt, forKey: .expireAt)
            
            
            
            
            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(gAddressId, forKey: .gAddressId)
            
            
            
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
            
            
            
            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AddressDetail
        Used By: Payment
    */

    class AddressDetail: Codable {
        
        
        public var line1: String?
        
        public var line2: String?
        
        public var googleMapPoint: GoogleMapPoint?
        
        public var landmark: String?
        
        public var phone: String?
        
        public var countryIsoCode: String?
        
        public var areaCode: String?
        
        public var country: String
        
        public var expireAt: String?
        
        public var geoLocation: [String: Any]?
        
        public var state: String
        
        public var area: String?
        
        public var gAddressId: String?
        
        public var areaCodeSlug: String?
        
        public var countryPhoneCode: String?
        
        public var name: String?
        
        public var addressType: String?
        
        public var address: String?
        
        public var email: String?
        
        public var city: String
        
        public var tags: [[String: Any]]?
        
        public var pincode: String?
        
        public var type: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case line1 = "line1"
            
            case line2 = "line2"
            
            case googleMapPoint = "google_map_point"
            
            case landmark = "landmark"
            
            case phone = "phone"
            
            case countryIsoCode = "country_iso_code"
            
            case areaCode = "area_code"
            
            case country = "country"
            
            case expireAt = "expire_at"
            
            case geoLocation = "geo_location"
            
            case state = "state"
            
            case area = "area"
            
            case gAddressId = "g_address_id"
            
            case areaCodeSlug = "area_code_slug"
            
            case countryPhoneCode = "country_phone_code"
            
            case name = "name"
            
            case addressType = "address_type"
            
            case address = "address"
            
            case email = "email"
            
            case city = "city"
            
            case tags = "tags"
            
            case pincode = "pincode"
            
            case type = "type"
            
        }

        public init(address: String? = nil, addressType: String? = nil, area: String? = nil, areaCode: String? = nil, areaCodeSlug: String? = nil, city: String, country: String, countryIsoCode: String? = nil, countryPhoneCode: String? = nil, email: String? = nil, expireAt: String? = nil, geoLocation: [String: Any]? = nil, googleMapPoint: GoogleMapPoint? = nil, gAddressId: String? = nil, landmark: String? = nil, line1: String? = nil, line2: String? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, state: String, tags: [[String: Any]]? = nil, type: String? = nil) {
            
            self.line1 = line1
            
            self.line2 = line2
            
            self.googleMapPoint = googleMapPoint
            
            self.landmark = landmark
            
            self.phone = phone
            
            self.countryIsoCode = countryIsoCode
            
            self.areaCode = areaCode
            
            self.country = country
            
            self.expireAt = expireAt
            
            self.geoLocation = geoLocation
            
            self.state = state
            
            self.area = area
            
            self.gAddressId = gAddressId
            
            self.areaCodeSlug = areaCodeSlug
            
            self.countryPhoneCode = countryPhoneCode
            
            self.name = name
            
            self.addressType = addressType
            
            self.address = address
            
            self.email = email
            
            self.city = city
            
            self.tags = tags
            
            self.pincode = pincode
            
            self.type = type
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    line1 = try container.decode(String.self, forKey: .line1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    line2 = try container.decode(String.self, forKey: .line2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    googleMapPoint = try container.decode(GoogleMapPoint.self, forKey: .googleMapPoint)
                
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
                    phone = try container.decode(String.self, forKey: .phone)
                
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
                    areaCode = try container.decode(String.self, forKey: .areaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    expireAt = try container.decode(String.self, forKey: .expireAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    geoLocation = try container.decode([String: Any].self, forKey: .geoLocation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                do {
                    area = try container.decode(String.self, forKey: .area)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    gAddressId = try container.decode(String.self, forKey: .gAddressId)
                
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
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
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
                    address = try container.decode(String.self, forKey: .address)
                
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
                
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                do {
                    tags = try container.decode([[String: Any]].self, forKey: .tags)
                
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
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(line1, forKey: .line1)
            
            
            
            
            try? container.encodeIfPresent(line2, forKey: .line2)
            
            
            
            
            try? container.encodeIfPresent(googleMapPoint, forKey: .googleMapPoint)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
            
            
            try? container.encodeIfPresent(areaCode, forKey: .areaCode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(expireAt, forKey: .expireAt)
            
            
            
            
            try? container.encodeIfPresent(geoLocation, forKey: .geoLocation)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(gAddressId, forKey: .gAddressId)
            
            
            
            
            try? container.encodeIfPresent(areaCodeSlug, forKey: .areaCodeSlug)
            
            
            
            
            try? container.encodeIfPresent(countryPhoneCode, forKey: .countryPhoneCode)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
        }
        
    }
}


