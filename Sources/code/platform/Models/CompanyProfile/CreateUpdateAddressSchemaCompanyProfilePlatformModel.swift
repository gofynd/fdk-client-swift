

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: CreateUpdateAddressSchema
        Used By: CompanyProfile
    */

    class CreateUpdateAddressSchema: Codable {
        
        
        public var landmark: String?
        
        public var countryCode: String?
        
        public var pincode: String
        
        public var addressType: String
        
        public var longitude: Double
        
        public var country: String
        
        public var address2: String?
        
        public var state: String
        
        public var address1: String
        
        public var city: String
        
        public var latitude: Double
        

        public enum CodingKeys: String, CodingKey {
            
            case landmark = "landmark"
            
            case countryCode = "country_code"
            
            case pincode = "pincode"
            
            case addressType = "address_type"
            
            case longitude = "longitude"
            
            case country = "country"
            
            case address2 = "address2"
            
            case state = "state"
            
            case address1 = "address1"
            
            case city = "city"
            
            case latitude = "latitude"
            
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, pincode: String, state: String) {
            
            self.landmark = landmark
            
            self.countryCode = countryCode
            
            self.pincode = pincode
            
            self.addressType = addressType
            
            self.longitude = longitude
            
            self.country = country
            
            self.address2 = address2
            
            self.state = state
            
            self.address1 = address1
            
            self.city = city
            
            self.latitude = latitude
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
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
                
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                addressType = try container.decode(String.self, forKey: .addressType)
                
            
            
            
                longitude = try container.decode(Double.self, forKey: .longitude)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                address1 = try container.decode(String.self, forKey: .address1)
                
            
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                latitude = try container.decode(Double.self, forKey: .latitude)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
        }
        
    }
}




