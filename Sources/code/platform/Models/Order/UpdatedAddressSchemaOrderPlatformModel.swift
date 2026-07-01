

import Foundation


public extension PlatformClient.Order {
    /*
        Model: UpdatedAddressSchema
        Used By: Order
    */

    class UpdatedAddressSchema: Codable {
        
        
        public var address: String?
        
        public var area: String?
        
        public var landmark: String?
        
        public var pincode: String?
        
        public var city: String?
        
        public var state: String?
        
        public var name: String?
        
        public var phone: String?
        
        public var email: String?
        
        public var country: String?
        
        public var countryIsoCode: String?
        
        public var latitude: Double?
        
        public var longitude: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case area = "area"
            
            case landmark = "landmark"
            
            case pincode = "pincode"
            
            case city = "city"
            
            case state = "state"
            
            case name = "name"
            
            case phone = "phone"
            
            case email = "email"
            
            case country = "country"
            
            case countryIsoCode = "country_iso_code"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
        }

        public init(address: String? = nil, area: String? = nil, city: String? = nil, country: String? = nil, countryIsoCode: String? = nil, email: String? = nil, landmark: String? = nil, latitude: Double? = nil, longitude: Double? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil) {
            
            self.address = address
            
            self.area = area
            
            self.landmark = landmark
            
            self.pincode = pincode
            
            self.city = city
            
            self.state = state
            
            self.name = name
            
            self.phone = phone
            
            self.email = email
            
            self.country = country
            
            self.countryIsoCode = countryIsoCode
            
            self.latitude = latitude
            
            self.longitude = longitude
            
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
                    country = try container.decode(String.self, forKey: .country)
                
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
                    latitude = try container.decode(Double.self, forKey: .latitude)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: UpdatedAddressSchema
        Used By: Order
    */

    class UpdatedAddressSchema: Codable {
        
        
        public var address: String?
        
        public var area: String?
        
        public var landmark: String?
        
        public var pincode: String?
        
        public var city: String?
        
        public var state: String?
        
        public var name: String?
        
        public var phone: String?
        
        public var email: String?
        
        public var country: String?
        
        public var countryIsoCode: String?
        
        public var latitude: Double?
        
        public var longitude: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case address = "address"
            
            case area = "area"
            
            case landmark = "landmark"
            
            case pincode = "pincode"
            
            case city = "city"
            
            case state = "state"
            
            case name = "name"
            
            case phone = "phone"
            
            case email = "email"
            
            case country = "country"
            
            case countryIsoCode = "country_iso_code"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
        }

        public init(address: String? = nil, area: String? = nil, city: String? = nil, country: String? = nil, countryIsoCode: String? = nil, email: String? = nil, landmark: String? = nil, latitude: Double? = nil, longitude: Double? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil) {
            
            self.address = address
            
            self.area = area
            
            self.landmark = landmark
            
            self.pincode = pincode
            
            self.city = city
            
            self.state = state
            
            self.name = name
            
            self.phone = phone
            
            self.email = email
            
            self.country = country
            
            self.countryIsoCode = countryIsoCode
            
            self.latitude = latitude
            
            self.longitude = longitude
            
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
                    country = try container.decode(String.self, forKey: .country)
                
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
                    latitude = try container.decode(Double.self, forKey: .latitude)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
        }
        
    }
}


