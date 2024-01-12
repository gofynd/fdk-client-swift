

import Foundation


public extension PlatformClient.Order {
    /*
        Model: OrderingStoreDetails
        Used By: Order
    */

    class OrderingStoreDetails: Codable {
        
        
        public var phone: String?
        
        public var pincode: String?
        
        public var meta: [String: Any]?
        
        public var address: String?
        
        public var address1: String?
        
        public var displayAddress: String?
        
        public var id: Int?
        
        public var code: String?
        
        public var storeName: String?
        
        public var country: String?
        
        public var contactPerson: String?
        
        public var state: String?
        
        public var city: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case pincode = "pincode"
            
            case meta = "meta"
            
            case address = "address"
            
            case address1 = "address1"
            
            case displayAddress = "display_address"
            
            case id = "id"
            
            case code = "code"
            
            case storeName = "store_name"
            
            case country = "country"
            
            case contactPerson = "contact_person"
            
            case state = "state"
            
            case city = "city"
            
        }

        public init(address: String? = nil, address1: String? = nil, city: String? = nil, code: String? = nil, contactPerson: String? = nil, country: String? = nil, displayAddress: String? = nil, id: Int? = nil, meta: [String: Any]? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil, storeName: String? = nil) {
            
            self.phone = phone
            
            self.pincode = pincode
            
            self.meta = meta
            
            self.address = address
            
            self.address1 = address1
            
            self.displayAddress = displayAddress
            
            self.id = id
            
            self.code = code
            
            self.storeName = storeName
            
            self.country = country
            
            self.contactPerson = contactPerson
            
            self.state = state
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
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
                    displayAddress = try container.decode(String.self, forKey: .displayAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeName = try container.decode(String.self, forKey: .storeName)
                
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
                    contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
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
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(phone, forKey: .phone)
            
            
            
            
            try? container.encode(pincode, forKey: .pincode)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encode(address, forKey: .address)
            
            
            
            
            try? container.encode(address1, forKey: .address1)
            
            
            
            
            try? container.encode(displayAddress, forKey: .displayAddress)
            
            
            
            
            try? container.encode(id, forKey: .id)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(storeName, forKey: .storeName)
            
            
            
            
            try? container.encode(country, forKey: .country)
            
            
            
            
            try? container.encode(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encode(state, forKey: .state)
            
            
            
            
            try? container.encode(city, forKey: .city)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: OrderingStoreDetails
        Used By: Order
    */

    class OrderingStoreDetails: Codable {
        
        
        public var phone: String?
        
        public var pincode: String?
        
        public var meta: [String: Any]?
        
        public var address: String?
        
        public var address1: String?
        
        public var displayAddress: String?
        
        public var id: Int?
        
        public var code: String?
        
        public var storeName: String?
        
        public var country: String?
        
        public var contactPerson: String?
        
        public var state: String?
        
        public var city: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case phone = "phone"
            
            case pincode = "pincode"
            
            case meta = "meta"
            
            case address = "address"
            
            case address1 = "address1"
            
            case displayAddress = "display_address"
            
            case id = "id"
            
            case code = "code"
            
            case storeName = "store_name"
            
            case country = "country"
            
            case contactPerson = "contact_person"
            
            case state = "state"
            
            case city = "city"
            
        }

        public init(address: String? = nil, address1: String? = nil, city: String? = nil, code: String? = nil, contactPerson: String? = nil, country: String? = nil, displayAddress: String? = nil, id: Int? = nil, meta: [String: Any]? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil, storeName: String? = nil) {
            
            self.phone = phone
            
            self.pincode = pincode
            
            self.meta = meta
            
            self.address = address
            
            self.address1 = address1
            
            self.displayAddress = displayAddress
            
            self.id = id
            
            self.code = code
            
            self.storeName = storeName
            
            self.country = country
            
            self.contactPerson = contactPerson
            
            self.state = state
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
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
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
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
                    displayAddress = try container.decode(String.self, forKey: .displayAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    id = try container.decode(Int.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeName = try container.decode(String.self, forKey: .storeName)
                
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
                    contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
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
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(phone, forKey: .phone)
            
            
            
            
            try? container.encode(pincode, forKey: .pincode)
            
            
            
            
            try? container.encode(meta, forKey: .meta)
            
            
            
            
            try? container.encode(address, forKey: .address)
            
            
            
            
            try? container.encode(address1, forKey: .address1)
            
            
            
            
            try? container.encode(displayAddress, forKey: .displayAddress)
            
            
            
            
            try? container.encode(id, forKey: .id)
            
            
            
            
            try? container.encode(code, forKey: .code)
            
            
            
            
            try? container.encode(storeName, forKey: .storeName)
            
            
            
            
            try? container.encode(country, forKey: .country)
            
            
            
            
            try? container.encode(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encode(state, forKey: .state)
            
            
            
            
            try? container.encode(city, forKey: .city)
            
            
        }
        
    }
}


