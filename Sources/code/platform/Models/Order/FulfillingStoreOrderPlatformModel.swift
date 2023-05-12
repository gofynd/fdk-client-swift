

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var state: String

        public var address: String

        public var id: Int

        public var pincode: String

        public var city: String

        public var country: String

        public var contactPerson: String

        public var code: String

        public var storeName: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case state

            case address

            case id

            case pincode

            case city

            case country

            case contactPerson = "contact_person"

            case code

            case storeName = "store_name"

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.state = state

            self.address = address

            self.id = id

            self.pincode = pincode

            self.city = city

            self.country = country

            self.contactPerson = contactPerson

            self.code = code

            self.storeName = storeName

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            id = try container.decode(Int.self, forKey: .id)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var state: String

        public var address: String

        public var id: Int

        public var pincode: String

        public var city: String

        public var country: String

        public var contactPerson: String

        public var code: String

        public var storeName: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case state

            case address

            case id

            case pincode

            case city

            case country

            case contactPerson = "contact_person"

            case code

            case storeName = "store_name"

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.state = state

            self.address = address

            self.id = id

            self.pincode = pincode

            self.city = city

            self.country = country

            self.contactPerson = contactPerson

            self.code = code

            self.storeName = storeName

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            id = try container.decode(Int.self, forKey: .id)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
