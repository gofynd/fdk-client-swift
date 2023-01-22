

import Foundation
public extension PlatformClient {
    /*
        Model: FulfillingStore
        Used By: Order
    */

    class FulfillingStore: Codable {
        
        
        public var country: String
        
        public var state: String
        
        public var fulfillmentChannel: String
        
        public var contactPerson: String
        
        public var id: String
        
        public var address: String
        
        public var pincode: String
        
        public var storeName: String
        
        public var code: String
        
        public var city: String
        
        public var meta: [String: Any]
        
        public var phone: String
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case state = "state"
            
            case fulfillmentChannel = "fulfillment_channel"
            
            case contactPerson = "contact_person"
            
            case id = "id"
            
            case address = "address"
            
            case pincode = "pincode"
            
            case storeName = "store_name"
            
            case code = "code"
            
            case city = "city"
            
            case meta = "meta"
            
            case phone = "phone"
            
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            
            self.country = country
            
            self.state = state
            
            self.fulfillmentChannel = fulfillmentChannel
            
            self.contactPerson = contactPerson
            
            self.id = id
            
            self.address = address
            
            self.pincode = pincode
            
            self.storeName = storeName
            
            self.code = code
            
            self.city = city
            
            self.meta = meta
            
            self.phone = phone
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                state = try container.decode(String.self, forKey: .state)
                
            
            
            
                fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
                
            
            
            
                contactPerson = try container.decode(String.self, forKey: .contactPerson)
                
            
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                address = try container.decode(String.self, forKey: .address)
                
            
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
            
                storeName = try container.decode(String.self, forKey: .storeName)
                
            
            
            
                code = try container.decode(String.self, forKey: .code)
                
            
            
            
                city = try container.decode(String.self, forKey: .city)
                
            
            
            
                meta = try container.decode([String: Any].self, forKey: .meta)
                
            
            
            
                phone = try container.decode(String.self, forKey: .phone)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
            
            
            
            
            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            
            try? container.encodeIfPresent(storeName, forKey: .storeName)
            
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            
            try? container.encodeIfPresent(city, forKey: .city)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
        }
        
    }
}
