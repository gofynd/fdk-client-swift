

import Foundation


public extension PlatformClient.Order {
    /*
        Model: FulfillingStore
        Used By: Order
    */

    class FulfillingStore: Codable {
        
        
        public var phone: String
        
        public var pincode: String
        
        public var meta: [String: Any]
        
        public var address: String
        
        public var address1: String?
        
        public var displayAddress: String?
        
        public var id: Int
        
        public var code: String
        
        public var storeName: String
        
        public var country: String
        
        public var fulfillmentChannel: String
        
        public var contactPerson: String
        
        public var state: String
        
        public var city: String
        

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
            
            case fulfillmentChannel = "fulfillment_channel"
            
            case contactPerson = "contact_person"
            
            case state = "state"
            
            case city = "city"
            
        }

        public init(address: String, address1: String? = nil, city: String, code: String, contactPerson: String, country: String, displayAddress: String? = nil, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            
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
            
            self.fulfillmentChannel = fulfillmentChannel
            
            self.contactPerson = contactPerson
            
            self.state = state
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                phone = try container.decode(String.self, forKey: .phone)
                
            
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                meta = try container.decode([String: Any].self, forKey: .meta)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
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
                
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                storeName = try container.decode(String.self, forKey: .storeName)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
                
            
            
            
                contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
            
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encode(address1, forKey: .address1)
            
            
            
            
            try? container.encode(displayAddress, forKey: .displayAddress)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(storeName, forKey: .storeName)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: FulfillingStore
        Used By: Order
    */

    class FulfillingStore: Codable {
        
        
        public var phone: String
        
        public var pincode: String
        
        public var meta: [String: Any]
        
        public var address: String
        
        public var address1: String?
        
        public var displayAddress: String?
        
        public var id: Int
        
        public var code: String
        
        public var storeName: String
        
        public var country: String
        
        public var fulfillmentChannel: String
        
        public var contactPerson: String
        
        public var state: String
        
        public var city: String
        

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
            
            case fulfillmentChannel = "fulfillment_channel"
            
            case contactPerson = "contact_person"
            
            case state = "state"
            
            case city = "city"
            
        }

        public init(address: String, address1: String? = nil, city: String, code: String, contactPerson: String, country: String, displayAddress: String? = nil, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            
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
            
            self.fulfillmentChannel = fulfillmentChannel
            
            self.contactPerson = contactPerson
            
            self.state = state
            
            self.city = city
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                phone = try container.decode(String.self, forKey: .phone)
                
            
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                meta = try container.decode([String: Any].self, forKey: .meta)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
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
                
            
            
                id = try container.decode(Int.self, forKey: .id)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                storeName = try container.decode(String.self, forKey: .storeName)
                
            
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
                
            
            
            
                contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
            
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encode(address1, forKey: .address1)
            
            
            
            
            try? container.encode(displayAddress, forKey: .displayAddress)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(storeName, forKey: .storeName)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
        }
        
    }
}


