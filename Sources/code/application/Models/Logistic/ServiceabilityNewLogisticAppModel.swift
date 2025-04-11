

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ServiceabilityNew
        Used By: Logistic
    */
    class ServiceabilityNew: Codable {
        
        public var state: String?
        
        public var city: String?
        
        public var country: String?
        
        public var sector: String?
        
        public var countryIsoCode: String?
        
        public var location: Location?
        
        public var pincode: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case state = "state"
            
            case city = "city"
            
            case country = "country"
            
            case sector = "sector"
            
            case countryIsoCode = "country_iso_code"
            
            case location = "location"
            
            case pincode = "pincode"
            
        }

        public init(city: String? = nil, country: String? = nil, countryIsoCode: String? = nil, location: Location? = nil, pincode: String? = nil, sector: String? = nil, state: String? = nil) {
            
            self.state = state
            
            self.city = city
            
            self.country = country
            
            self.sector = sector
            
            self.countryIsoCode = countryIsoCode
            
            self.location = location
            
            self.pincode = pincode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            do {
                country = try container.decode(String.self, forKey: .country)
            
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
                countryIsoCode = try container.decode(String.self, forKey: .countryIsoCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                location = try container.decode(Location.self, forKey: .location)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            try? container.encodeIfPresent(sector, forKey: .sector)
            
            
            
            try? container.encodeIfPresent(countryIsoCode, forKey: .countryIsoCode)
            
            
            
            try? container.encodeIfPresent(location, forKey: .location)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
        }
        
    }
}
