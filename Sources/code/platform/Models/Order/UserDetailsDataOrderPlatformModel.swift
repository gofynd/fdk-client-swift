

import Foundation


public extension PlatformClient.Order {
    /*
        Model: UserDetailsData
        Used By: Order
    */

    class UserDetailsData: Codable {
        
        
        public var phone: String
        
        public var pincode: String
        
        public var address: String
        
        public var area: String?
        
        public var addressType: String?
        
        public var country: String
        
        public var email: String?
        
        public var address1: String?
        
        public var landmark: String?
        
        public var state: String
        
        public var name: String
        
        public var city: String
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case pincode = "pincode"
            
            case address = "address"
            
            case area = "area"
            
            case addressType = "address_type"
            
            case country = "country"
            
            case email = "email"
            
            case address1 = "address1"
            
            case landmark = "landmark"
            
            case state = "state"
            
            case name = "name"
            
            case city = "city"
            
        }

        public init(address: String, address1: String? = nil, addressType: String? = nil, area: String? = nil, city: String, country: String, email: String? = nil, landmark: String? = nil, name: String, phone: String, pincode: String, state: String) {
            
            self.phone = phone
            
            self.pincode = pincode
            
            self.address = address
            
            self.area = area
            
            self.addressType = addressType
            
            self.country = country
            
            self.email = email
            
            self.address1 = address1
            
            self.landmark = landmark
            
            self.state = state
            
            self.name = name
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                phone = try container.decode(String.self, forKey: .phone)
                
            
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                do {
                    area = try container.decode(String.self, forKey: .area)
                
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
                
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
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
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encode(area, forKey: .area)
            
            
            
            
            try? container.encode(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encode(email, forKey: .email)
            
            
            
            
            try? container.encode(address1, forKey: .address1)
            
            
            
            
            try? container.encode(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: UserDetailsData
        Used By: Order
    */

    class UserDetailsData: Codable {
        
        
        public var phone: String
        
        public var pincode: String
        
        public var address: String
        
        public var area: String?
        
        public var addressType: String?
        
        public var country: String
        
        public var email: String?
        
        public var address1: String?
        
        public var landmark: String?
        
        public var state: String
        
        public var name: String
        
        public var city: String
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case pincode = "pincode"
            
            case address = "address"
            
            case area = "area"
            
            case addressType = "address_type"
            
            case country = "country"
            
            case email = "email"
            
            case address1 = "address1"
            
            case landmark = "landmark"
            
            case state = "state"
            
            case name = "name"
            
            case city = "city"
            
        }

        public init(address: String, address1: String? = nil, addressType: String? = nil, area: String? = nil, city: String, country: String, email: String? = nil, landmark: String? = nil, name: String, phone: String, pincode: String, state: String) {
            
            self.phone = phone
            
            self.pincode = pincode
            
            self.address = address
            
            self.area = area
            
            self.addressType = addressType
            
            self.country = country
            
            self.email = email
            
            self.address1 = address1
            
            self.landmark = landmark
            
            self.state = state
            
            self.name = name
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                phone = try container.decode(String.self, forKey: .phone)
                
            
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                do {
                    area = try container.decode(String.self, forKey: .area)
                
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
                
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
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
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encode(area, forKey: .area)
            
            
            
            
            try? container.encode(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encode(email, forKey: .email)
            
            
            
            
            try? container.encode(address1, forKey: .address1)
            
            
            
            
            try? container.encode(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
        }
        
    }
}


