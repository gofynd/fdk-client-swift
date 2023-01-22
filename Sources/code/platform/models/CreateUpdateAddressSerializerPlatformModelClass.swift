

import Foundation
public extension PlatformClient {
    /*
        Model: CreateUpdateAddressSerializer
        Used By: CompanyProfile
    */

    class CreateUpdateAddressSerializer: Codable {
        
        
        public var state: String
        
        public var countryCode: String?
        
        public var address1: String
        
        public var address2: String?
        
        public var addressType: String
        
        public var latitude: Double
        
        public var longitude: Double
        
        public var landmark: String?
        
        public var city: String
        
        public var country: String
        
        public var pincode: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case state = "state"
            
            case countryCode = "country_code"
            
            case address1 = "address1"
            
            case address2 = "address2"
            
            case addressType = "address_type"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
            case landmark = "landmark"
            
            case city = "city"
            
            case country = "country"
            
            case pincode = "pincode"
            
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            
            self.state = state
            
            self.countryCode = countryCode
            
            self.address1 = address1
            
            self.address2 = address2
            
            self.addressType = addressType
            
            self.latitude = latitude
            
            self.longitude = longitude
            
            self.landmark = landmark
            
            self.city = city
            
            self.country = country
            
            self.pincode = pincode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                address1 = try container.decode(String.self, forKey: .address1)
                
            
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                addressType = try container.decode(String.self, forKey: .addressType)
                
            
            
            
                latitude = try container.decode(Double.self, forKey: .latitude)
                
            
            
            
                longitude = try container.decode(Double.self, forKey: .longitude)
                
            
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
        }
        
    }
}
