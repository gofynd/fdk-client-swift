

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: AddressDetails
        Used By: Billing
    */

    class AddressDetails: Codable {
        
        
        public var addressLine1: String?
        
        public var addressLine2: String?
        
        public var city: String?
        
        public var pincode: String?
        
        public var state: String?
        
        public var country: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case addressLine1 = "address_line_1"
            
            case addressLine2 = "address_line_2"
            
            case city = "city"
            
            case pincode = "pincode"
            
            case state = "state"
            
            case country = "country"
            
        }

        public init(addressLine1: String? = nil, addressLine2: String? = nil, city: String? = nil, country: String? = nil, pincode: String? = nil, state: String? = nil) {
            
            self.addressLine1 = addressLine1
            
            self.addressLine2 = addressLine2
            
            self.city = city
            
            self.pincode = pincode
            
            self.state = state
            
            self.country = country
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    addressLine1 = try container.decode(String.self, forKey: .addressLine1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    addressLine2 = try container.decode(String.self, forKey: .addressLine2)
                
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
                    pincode = try container.decode(String.self, forKey: .pincode)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(addressLine1, forKey: .addressLine1)
            
            
            
            
            try? container.encodeIfPresent(addressLine2, forKey: .addressLine2)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
        }
        
    }
}




