

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: StoreAddressSchema
        Used By: Catalog
    */
    class StoreAddressSchema: Codable {
        
        public var latitude: Double?
        
        public var state: String?
        
        public var country: String?
        
        public var landmark: String?
        
        public var address1: String?
        
        public var pincode: String?
        
        public var city: String?
        
        public var longitude: Double?
        
        public var address2: String?
        
        public var latLong: LatLong?
        
        public var countryCode: String?
        
        public var addressMeta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case latitude = "latitude"
            
            case state = "state"
            
            case country = "country"
            
            case landmark = "landmark"
            
            case address1 = "address1"
            
            case pincode = "pincode"
            
            case city = "city"
            
            case longitude = "longitude"
            
            case address2 = "address2"
            
            case latLong = "lat_long"
            
            case countryCode = "country_code"
            
            case addressMeta = "address_meta"
            
        }

        public init(address1: String? = nil, address2: String? = nil, addressMeta: [String: Any]? = nil, city: String? = nil, country: String? = nil, countryCode: String? = nil, landmark: String? = nil, latitude: Double? = nil, latLong: LatLong? = nil, longitude: Double? = nil, pincode: String? = nil, state: String? = nil) {
            
            self.latitude = latitude
            
            self.state = state
            
            self.country = country
            
            self.landmark = landmark
            
            self.address1 = address1
            
            self.pincode = pincode
            
            self.city = city
            
            self.longitude = longitude
            
            self.address2 = address2
            
            self.latLong = latLong
            
            self.countryCode = countryCode
            
            self.addressMeta = addressMeta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                latitude = try container.decode(Double.self, forKey: .latitude)
            
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
                landmark = try container.decode(String.self, forKey: .landmark)
            
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
                longitude = try container.decode(Double.self, forKey: .longitude)
            
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
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            try? container.encodeIfPresent(latLong, forKey: .latLong)
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            try? container.encodeIfPresent(addressMeta, forKey: .addressMeta)
            
            
        }
        
    }
}
