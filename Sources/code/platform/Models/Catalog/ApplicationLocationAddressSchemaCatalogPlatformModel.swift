

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ApplicationLocationAddressSchema
        Used By: Catalog
    */

    class ApplicationLocationAddressSchema: Codable {
        
        
        public var address1: String?
        
        public var address2: String?
        
        public var pincode: Int?
        
        public var city: String?
        
        public var country: String?
        
        public var state: String?
        
        public var latLong: LatLong?
        
        public var countryCode: String?
        
        public var addressMeta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case address1 = "address1"
            
            case address2 = "address2"
            
            case pincode = "pincode"
            
            case city = "city"
            
            case country = "country"
            
            case state = "state"
            
            case latLong = "lat_long"
            
            case countryCode = "country_code"
            
            case addressMeta = "address_meta"
            
        }

        public init(address1: String? = nil, address2: String? = nil, addressMeta: [String: Any]? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, latLong: LatLong? = nil, pincode: Int? = nil, state: String? = nil) {
            
            self.address1 = address1
            
            self.address2 = address2
            
            self.pincode = pincode
            
            self.city = city
            
            self.country = country
            
            self.state = state
            
            self.latLong = latLong
            
            self.countryCode = countryCode
            
            self.addressMeta = addressMeta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
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
                    country = try container.decode(String.self, forKey: .country)
                
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
                    latLong = try container.decode(LatLong.self, forKey: .latLong)
                
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
                    addressMeta = try container.decode([String: Any].self, forKey: .addressMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(latLong, forKey: .latLong)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(addressMeta, forKey: .addressMeta)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ApplicationLocationAddressSchema
        Used By: Catalog
    */

    class ApplicationLocationAddressSchema: Codable {
        
        
        public var address1: String?
        
        public var address2: String?
        
        public var pincode: Int?
        
        public var city: String?
        
        public var country: String?
        
        public var state: String?
        
        public var latLong: LatLong?
        
        public var countryCode: String?
        
        public var addressMeta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case address1 = "address1"
            
            case address2 = "address2"
            
            case pincode = "pincode"
            
            case city = "city"
            
            case country = "country"
            
            case state = "state"
            
            case latLong = "lat_long"
            
            case countryCode = "country_code"
            
            case addressMeta = "address_meta"
            
        }

        public init(address1: String? = nil, address2: String? = nil, addressMeta: [String: Any]? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, latLong: LatLong? = nil, pincode: Int? = nil, state: String? = nil) {
            
            self.address1 = address1
            
            self.address2 = address2
            
            self.pincode = pincode
            
            self.city = city
            
            self.country = country
            
            self.state = state
            
            self.latLong = latLong
            
            self.countryCode = countryCode
            
            self.addressMeta = addressMeta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
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
                    country = try container.decode(String.self, forKey: .country)
                
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
                    latLong = try container.decode(LatLong.self, forKey: .latLong)
                
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
                    addressMeta = try container.decode([String: Any].self, forKey: .addressMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(latLong, forKey: .latLong)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(addressMeta, forKey: .addressMeta)
            
            
        }
        
    }
}


