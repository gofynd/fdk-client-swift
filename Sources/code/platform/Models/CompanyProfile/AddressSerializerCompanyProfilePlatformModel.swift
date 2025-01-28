

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: AddressSerializer
        Used By: CompanyProfile
    */

    class AddressSerializer: Codable {
        
        
        public var landmark: String?
        
        public var countryCode: String
        
        public var pincode: String?
        
        public var addressType: String?
        
        public var longitude: Double
        
        public var country: String?
        
        public var address2: String?
        
        public var state: String?
        
        public var sector: String?
        
        public var stateCode: String?
        
        public var address1: String?
        
        public var city: String?
        
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
            
            case sector = "sector"
            
            case stateCode = "state_code"
            
            case address1 = "address1"
            
            case city = "city"
            
            case latitude = "latitude"
            
        }

        public init(address1: String? = nil, address2: String? = nil, addressType: String? = nil, city: String? = nil, country: String? = nil, countryCode: String, landmark: String? = nil, latitude: Double, longitude: Double, pincode: String? = nil, sector: String? = nil, state: String? = nil, stateCode: String? = nil) {
            
            self.landmark = landmark
            
            self.countryCode = countryCode
            
            self.pincode = pincode
            
            self.addressType = addressType
            
            self.longitude = longitude
            
            self.country = country
            
            self.address2 = address2
            
            self.state = state
            
            self.sector = sector
            
            self.stateCode = stateCode
            
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
                
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                do {
                    pincode = try container.decode(String.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                longitude = try container.decode(Double.self, forKey: .longitude)
                
            
            
            
                do {
                    country = try container.decode(String.self, forKey: .country)
                
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
                    state = try container.decode(String.self, forKey: .state)
                
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
                    stateCode = try container.decode(String.self, forKey: .stateCode)
                
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
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
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
            
            
            
            
            try? container.encodeIfPresent(sector, forKey: .sector)
            
            
            
            
            try? container.encodeIfPresent(stateCode, forKey: .stateCode)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
        }
        
    }
}




