

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var storeName: String

        public var address: String

        public var state: String

        public var country: String

        public var city: String

        public var fulfillmentChannel: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var code: String

        public var id: Int

        public var phone: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case address

            case state

            case country

            case city

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case contactPerson = "contact_person"

            case code

            case id

            case phone

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.address = address

            self.state = state

            self.country = country

            self.city = city

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.contactPerson = contactPerson

            self.code = code

            self.id = id

            self.phone = phone

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            address = try container.decode(String.self, forKey: .address)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            id = try container.decode(Int.self, forKey: .id)

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var storeName: String

        public var address: String

        public var state: String

        public var country: String

        public var city: String

        public var fulfillmentChannel: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var code: String

        public var id: Int

        public var phone: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case address

            case state

            case country

            case city

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case contactPerson = "contact_person"

            case code

            case id

            case phone

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.address = address

            self.state = state

            self.country = country

            self.city = city

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.contactPerson = contactPerson

            self.code = code

            self.id = id

            self.phone = phone

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            address = try container.decode(String.self, forKey: .address)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            id = try container.decode(Int.self, forKey: .id)

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
