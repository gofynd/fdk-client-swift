

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ShipmentsCourierPartnersServiceability
        Used By: Serviceability
    */

    class ShipmentsCourierPartnersServiceability: Codable {
        
        
        public var pincode: String?
        
        public var sectorCode: String?
        
        public var stateCode: String?
        
        public var cityCode: String?
        
        public var countryCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case sectorCode = "sector_code"
            
            case stateCode = "state_code"
            
            case cityCode = "city_code"
            
            case countryCode = "country_code"
            
        }

        public init(cityCode: String? = nil, countryCode: String, pincode: String? = nil, sectorCode: String? = nil, stateCode: String? = nil) {
            
            self.pincode = pincode
            
            self.sectorCode = sectorCode
            
            self.stateCode = stateCode
            
            self.cityCode = cityCode
            
            self.countryCode = countryCode
            
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
                    sectorCode = try container.decode(String.self, forKey: .sectorCode)
                
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
                    cityCode = try container.decode(String.self, forKey: .cityCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(sectorCode, forKey: .sectorCode)
            
            
            
            
            try? container.encodeIfPresent(stateCode, forKey: .stateCode)
            
            
            
            
            try? container.encodeIfPresent(cityCode, forKey: .cityCode)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ShipmentsCourierPartnersServiceability
        Used By: Serviceability
    */

    class ShipmentsCourierPartnersServiceability: Codable {
        
        
        public var pincode: String?
        
        public var sectorCode: String?
        
        public var stateCode: String?
        
        public var cityCode: String?
        
        public var countryCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case pincode = "pincode"
            
            case sectorCode = "sector_code"
            
            case stateCode = "state_code"
            
            case cityCode = "city_code"
            
            case countryCode = "country_code"
            
        }

        public init(cityCode: String? = nil, countryCode: String, pincode: String? = nil, sectorCode: String? = nil, stateCode: String? = nil) {
            
            self.pincode = pincode
            
            self.sectorCode = sectorCode
            
            self.stateCode = stateCode
            
            self.cityCode = cityCode
            
            self.countryCode = countryCode
            
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
                    sectorCode = try container.decode(String.self, forKey: .sectorCode)
                
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
                    cityCode = try container.decode(String.self, forKey: .cityCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(sectorCode, forKey: .sectorCode)
            
            
            
            
            try? container.encodeIfPresent(stateCode, forKey: .stateCode)
            
            
            
            
            try? container.encodeIfPresent(cityCode, forKey: .cityCode)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}


