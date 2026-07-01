

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: Address
        Used By: Logistic
    */
    class Address: Codable {
        
        public var address1: String?
        
        public var address2: String?
        
        public var country: String?
        
        public var pincode: String?
        
        public var postalCode: String?
        
        public var city: String?
        
        public var state: String?
        
        public var latitude: Double?
        
        public var longitude: Double?
        
        public var countryCode: String?
        
        public var latLong: LatLong?
        

        public enum CodingKeys: String, CodingKey {
            
            case address1 = "address1"
            
            case address2 = "address2"
            
            case country = "country"
            
            case pincode = "pincode"
            
            case postalCode = "postal_code"
            
            case city = "city"
            
            case state = "state"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case countryCode = "country_code"
            
            case latLong = "lat_long"
            
        }

        public init(address1: String? = nil, address2: String? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, latitude: Double? = nil, latLong: LatLong? = nil, longitude: Double? = nil, pincode: String? = nil, postalCode: String? = nil, state: String? = nil) {
            
            self.address1 = address1
            
            self.address2 = address2
            
            self.country = country
            
            self.pincode = pincode
            
            self.postalCode = postalCode
            
            self.city = city
            
            self.state = state
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.countryCode = countryCode
            
            self.latLong = latLong
            
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
                postalCode = try container.decode(String.self, forKey: .postalCode)
            
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
            
            
            
            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            try? container.encodeIfPresent(postalCode, forKey: .postalCode)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            try? container.encodeIfPresent(latLong, forKey: .latLong)
            
            
        }
        
    }
}
