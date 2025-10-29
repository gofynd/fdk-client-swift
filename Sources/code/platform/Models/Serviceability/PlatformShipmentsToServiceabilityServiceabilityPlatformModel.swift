

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PlatformShipmentsToServiceability
        Used By: Serviceability
    */

    class PlatformShipmentsToServiceability: Codable {
        
        
        public var pincode: String?
        
        public var sector: String?
        
        public var state: String?
        
        public var country: String?
        
        public var city: String?
        
        public var countryIsoCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case sector = "sector"
            
            case state = "state"
            
            case country = "country"
            
            case city = "city"
            
            case countryIsoCode = "country_iso_code"
            
        }

        public init(city: String? = nil, country: String? = nil, countryIsoCode: String? = nil, pincode: String? = nil, sector: String? = nil, state: String? = nil) {
            
            self.pincode = pincode
            
            self.sector = sector
            
            self.state = state
            
            self.country = country
            
            self.city = city
            
            self.countryIsoCode = countryIsoCode
            
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
                    sector = try container.decode(String.self, forKey: .sector)
                
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
                    countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(sector, forKey: .sector)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PlatformShipmentsToServiceability
        Used By: Serviceability
    */

    class PlatformShipmentsToServiceability: Codable {
        
        
        public var pincode: String?
        
        public var sector: String?
        
        public var state: String?
        
        public var country: String?
        
        public var city: String?
        
        public var countryIsoCode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case sector = "sector"
            
            case state = "state"
            
            case country = "country"
            
            case city = "city"
            
            case countryIsoCode = "country_iso_code"
            
        }

        public init(city: String? = nil, country: String? = nil, countryIsoCode: String? = nil, pincode: String? = nil, sector: String? = nil, state: String? = nil) {
            
            self.pincode = pincode
            
            self.sector = sector
            
            self.state = state
            
            self.country = country
            
            self.city = city
            
            self.countryIsoCode = countryIsoCode
            
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
                    sector = try container.decode(String.self, forKey: .sector)
                
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
                    countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(sector, forKey: .sector)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
        }
        
    }
}


