

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AddressDetail
        Used By: Payment
    */

    class AddressDetail: Codable {
        
        
        public var googleMapPoint: [String: Any]?
        
        public var landmark: String?
        
        public var phone: String
        
        public var countryIsoCode: String
        
        public var areaCode: String
        
        public var country: String
        
        public var expireAt: String?
        
        public var geoLocation: [String: Any]?
        
        public var state: String
        
        public var area: String
        
        public var gAddressId: String
        
        public var areaCodeSlug: String
        
        public var countryPhoneCode: String
        
        public var name: String
        
        public var addressType: String?
        
        public var address: String
        
        public var email: String?
        
        public var city: String
        
        public var tags: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
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
            
        }

        public init(address: String, addressType: String? = nil, area: String, areaCode: String, areaCodeSlug: String, city: String, country: String, countryIsoCode: String, countryPhoneCode: String, email: String? = nil, expireAt: String? = nil, geoLocation: [String: Any]? = nil, googleMapPoint: [String: Any]? = nil, gAddressId: String, landmark: String? = nil, name: String, phone: String, state: String, tags: [[String: Any]]? = nil) {
            
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
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    googleMapPoint = try container.decode([String: Any].self, forKey: .googleMapPoint)
                
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
                
            
            
                phone = try container.decode(String.self, forKey: .phone)
                
            
            
            
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)
                
            
            
            
                areaCode = try container.decode(String.self, forKey: .areaCode)
                
            
            
            
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
                
            
            
            
                area = try container.decode(String.self, forKey: .area)
                
            
            
            
                gAddressId = try container.decode(String.self, forKey: .gAddressId)
                
            
            
            
                areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                
            
            
            
                countryPhoneCode = try container.decode(String.self, forKey: .countryPhoneCode)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
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
            
            
            
            
            try? container.encode(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AddressDetail
        Used By: Payment
    */

    class AddressDetail: Codable {
        
        
        public var googleMapPoint: [String: Any]?
        
        public var landmark: String?
        
        public var phone: String
        
        public var countryIsoCode: String
        
        public var areaCode: String
        
        public var country: String
        
        public var expireAt: String?
        
        public var geoLocation: [String: Any]?
        
        public var state: String
        
        public var area: String
        
        public var gAddressId: String
        
        public var areaCodeSlug: String
        
        public var countryPhoneCode: String
        
        public var name: String
        
        public var addressType: String?
        
        public var address: String
        
        public var email: String?
        
        public var city: String
        
        public var tags: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
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
            
        }

        public init(address: String, addressType: String? = nil, area: String, areaCode: String, areaCodeSlug: String, city: String, country: String, countryIsoCode: String, countryPhoneCode: String, email: String? = nil, expireAt: String? = nil, geoLocation: [String: Any]? = nil, googleMapPoint: [String: Any]? = nil, gAddressId: String, landmark: String? = nil, name: String, phone: String, state: String, tags: [[String: Any]]? = nil) {
            
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
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    googleMapPoint = try container.decode([String: Any].self, forKey: .googleMapPoint)
                
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
                
            
            
                phone = try container.decode(String.self, forKey: .phone)
                
            
            
            
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)
                
            
            
            
                areaCode = try container.decode(String.self, forKey: .areaCode)
                
            
            
            
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
                
            
            
            
                area = try container.decode(String.self, forKey: .area)
                
            
            
            
                gAddressId = try container.decode(String.self, forKey: .gAddressId)
                
            
            
            
                areaCodeSlug = try container.decode(String.self, forKey: .areaCodeSlug)
                
            
            
            
                countryPhoneCode = try container.decode(String.self, forKey: .countryPhoneCode)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
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
            
            
            
            
            try? container.encode(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
}


