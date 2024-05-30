

import Foundation


public extension PlatformClient.Order {
    /*
        Model: StoreAddress
        Used By: Order
    */

    class StoreAddress: Codable {
        
        
        public var phone: String
        
        public var createdAt: String
        
        public var contactPerson: String
        
        public var pincode: Int
        
        public var addressType: String
        
        public var address1: String
        
        public var version: String?
        
        public var addressCategory: String
        
        public var city: String
        
        public var longitude: Double
        
        public var address2: String?
        
        public var area: String?
        
        public var email: String?
        
        public var updatedAt: String
        
        public var countryCode: String
        
        public var country: String
        
        public var landmark: String?
        
        public var latitude: Double
        
        public var state: String
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case createdAt = "created_at"
            
            case contactPerson = "contact_person"
            
            case pincode = "pincode"
            
            case addressType = "address_type"
            
            case address1 = "address1"
            
            case version = "version"
            
            case addressCategory = "address_category"
            
            case city = "city"
            
            case longitude = "longitude"
            
            case address2 = "address2"
            
            case area = "area"
            
            case email = "email"
            
            case updatedAt = "updated_at"
            
            case countryCode = "country_code"
            
            case country = "country"
            
            case landmark = "landmark"
            
            case latitude = "latitude"
            
            case state = "state"
            
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            
            self.phone = phone
            
            self.createdAt = createdAt
            
            self.contactPerson = contactPerson
            
            self.pincode = pincode
            
            self.addressType = addressType
            
            self.address1 = address1
            
            self.version = version
            
            self.addressCategory = addressCategory
            
            self.city = city
            
            self.longitude = longitude
            
            self.address2 = address2
            
            self.area = area
            
            self.email = email
            
            self.updatedAt = updatedAt
            
            self.countryCode = countryCode
            
            self.country = country
            
            self.landmark = landmark
            
            self.latitude = latitude
            
            self.state = state
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                phone = try container.decode(String.self, forKey: .phone)
                
            
            
            
                createdAt = try container.decode(String.self, forKey: .createdAt)
                
            
            
            
                contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
            
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
                
            
            
            
                addressType = try container.decode(String.self, forKey: .addressType)
                
            
            
            
                address1 = try container.decode(String.self, forKey: .address1)
                
            
            
            
                do {
                    version = try container.decode(String.self, forKey: .version)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                addressCategory = try container.decode(String.self, forKey: .addressCategory)
                
            
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                longitude = try container.decode(Double.self, forKey: .longitude)
                
            
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    area = try container.decode(String.self, forKey: .area)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
            
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                latitude = try container.decode(Double.self, forKey: .latitude)
                
            
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: StoreAddress
        Used By: Order
    */

    class StoreAddress: Codable {
        
        
        public var phone: String
        
        public var createdAt: String
        
        public var contactPerson: String
        
        public var pincode: Int
        
        public var addressType: String
        
        public var address1: String
        
        public var version: String?
        
        public var addressCategory: String
        
        public var city: String
        
        public var longitude: Double
        
        public var address2: String?
        
        public var area: String?
        
        public var email: String?
        
        public var updatedAt: String
        
        public var countryCode: String
        
        public var country: String
        
        public var landmark: String?
        
        public var latitude: Double
        
        public var state: String
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case createdAt = "created_at"
            
            case contactPerson = "contact_person"
            
            case pincode = "pincode"
            
            case addressType = "address_type"
            
            case address1 = "address1"
            
            case version = "version"
            
            case addressCategory = "address_category"
            
            case city = "city"
            
            case longitude = "longitude"
            
            case address2 = "address2"
            
            case area = "area"
            
            case email = "email"
            
            case updatedAt = "updated_at"
            
            case countryCode = "country_code"
            
            case country = "country"
            
            case landmark = "landmark"
            
            case latitude = "latitude"
            
            case state = "state"
            
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            
            self.phone = phone
            
            self.createdAt = createdAt
            
            self.contactPerson = contactPerson
            
            self.pincode = pincode
            
            self.addressType = addressType
            
            self.address1 = address1
            
            self.version = version
            
            self.addressCategory = addressCategory
            
            self.city = city
            
            self.longitude = longitude
            
            self.address2 = address2
            
            self.area = area
            
            self.email = email
            
            self.updatedAt = updatedAt
            
            self.countryCode = countryCode
            
            self.country = country
            
            self.landmark = landmark
            
            self.latitude = latitude
            
            self.state = state
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                phone = try container.decode(String.self, forKey: .phone)
                
            
            
            
                createdAt = try container.decode(String.self, forKey: .createdAt)
                
            
            
            
                contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
            
            
            
                pincode = try container.decode(Int.self, forKey: .pincode)
                
            
            
            
                addressType = try container.decode(String.self, forKey: .addressType)
                
            
            
            
                address1 = try container.decode(String.self, forKey: .address1)
                
            
            
            
                do {
                    version = try container.decode(String.self, forKey: .version)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                addressCategory = try container.decode(String.self, forKey: .addressCategory)
                
            
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                longitude = try container.decode(Double.self, forKey: .longitude)
                
            
            
            
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    area = try container.decode(String.self, forKey: .area)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
            
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                do {
                    landmark = try container.decode(String.self, forKey: .landmark)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                latitude = try container.decode(Double.self, forKey: .latitude)
                
            
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(createdAt, forKey: .createdAt)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(addressType, forKey: .addressType)
            
            
            
            
            try? container.encodeIfPresent(address1, forKey: .address1)
            
            
            
            
            try? container.encodeIfPresent(version, forKey: .version)
            
            
            
            
            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
            
            
            try? container.encodeIfPresent(address2, forKey: .address2)
            
            
            
            
            try? container.encodeIfPresent(area, forKey: .area)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(landmark, forKey: .landmark)
            
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
        }
        
    }
}


