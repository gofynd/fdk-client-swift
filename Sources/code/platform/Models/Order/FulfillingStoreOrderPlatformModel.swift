

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var contactPerson: String

        public var storeName: String

        public var code: String

        public var fulfillmentChannel: String

        public var id: Int

        public var country: String

        public var pincode: String

        public var address: String

        public var meta: [String: Any]

        public var state: String

        public var city: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case contactPerson = "contact_person"

            case storeName = "store_name"

            case code

            case fulfillmentChannel = "fulfillment_channel"

            case id

            case country

            case pincode

            case address

            case meta

            case state

            case city

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.contactPerson = contactPerson

            self.storeName = storeName

            self.code = code

            self.fulfillmentChannel = fulfillmentChannel

            self.id = id

            self.country = country

            self.pincode = pincode

            self.address = address

            self.meta = meta

            self.state = state

            self.city = city

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeName = try container.decode(String.self, forKey: .storeName)

            code = try container.decode(String.self, forKey: .code)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            id = try container.decode(Int.self, forKey: .id)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            address = try container.decode(String.self, forKey: .address)

            meta = try container.decode([String: Any].self, forKey: .meta)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

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
        public var contactPerson: String

        public var storeName: String

        public var code: String

        public var fulfillmentChannel: String

        public var id: Int

        public var country: String

        public var pincode: String

        public var address: String

        public var meta: [String: Any]

        public var state: String

        public var city: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case contactPerson = "contact_person"

            case storeName = "store_name"

            case code

            case fulfillmentChannel = "fulfillment_channel"

            case id

            case country

            case pincode

            case address

            case meta

            case state

            case city

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.contactPerson = contactPerson

            self.storeName = storeName

            self.code = code

            self.fulfillmentChannel = fulfillmentChannel

            self.id = id

            self.country = country

            self.pincode = pincode

            self.address = address

            self.meta = meta

            self.state = state

            self.city = city

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeName = try container.decode(String.self, forKey: .storeName)

            code = try container.decode(String.self, forKey: .code)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            id = try container.decode(Int.self, forKey: .id)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            address = try container.decode(String.self, forKey: .address)

            meta = try container.decode([String: Any].self, forKey: .meta)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
