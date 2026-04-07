

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CourierPartnerToServiceability
        Used By: Serviceability
    */

    class CourierPartnerToServiceability: Codable {
        
        
        public var location: ServiceabilityLocation?
        
        public var pincode: String?
        
        public var sector: String?
        
        public var country: String?
        
        public var countryIsoCode: String?
        
        public var state: String?
        
        public var city: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case location = "location"
            
            case pincode = "pincode"
            
            case sector = "sector"
            
            case country = "country"
            
            case countryIsoCode = "country_iso_code"
            
            case state = "state"
            
            case city = "city"
            
        }

        public init(city: String? = nil, country: String? = nil, countryIsoCode: String? = nil, location: ServiceabilityLocation? = nil, pincode: String? = nil, sector: String? = nil, state: String? = nil) {
            
            self.location = location
            
            self.pincode = pincode
            
            self.sector = sector
            
            self.country = country
            
            self.countryIsoCode = countryIsoCode
            
            self.state = state
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    location = try container.decode(ServiceabilityLocation.self, forKey: .location)
                
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
                    state = try container.decode(String.self, forKey: .state)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(location, forKey: .location)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(sector, forKey: .sector)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CourierPartnerToServiceability
        Used By: Serviceability
    */

    class CourierPartnerToServiceability: Codable {
        
        
        public var location: ServiceabilityLocation?
        
        public var pincode: String?
        
        public var sector: String?
        
        public var country: String?
        
        public var countryIsoCode: String?
        
        public var state: String?
        
        public var city: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case location = "location"
            
            case pincode = "pincode"
            
            case sector = "sector"
            
            case country = "country"
            
            case countryIsoCode = "country_iso_code"
            
            case state = "state"
            
            case city = "city"
            
        }

        public init(city: String? = nil, country: String? = nil, countryIsoCode: String? = nil, location: ServiceabilityLocation? = nil, pincode: String? = nil, sector: String? = nil, state: String? = nil) {
            
            self.location = location
            
            self.pincode = pincode
            
            self.sector = sector
            
            self.country = country
            
            self.countryIsoCode = countryIsoCode
            
            self.state = state
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    location = try container.decode(ServiceabilityLocation.self, forKey: .location)
                
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
                    state = try container.decode(String.self, forKey: .state)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(location, forKey: .location)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(sector, forKey: .sector)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
        }
        
    }
}


