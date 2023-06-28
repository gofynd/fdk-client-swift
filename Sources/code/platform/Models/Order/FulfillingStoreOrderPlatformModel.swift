

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var contactPerson: String

        public var fulfillmentChannel: String

        public var country: String

        public var id: Int

        public var city: String

        public var storeName: String

        public var pincode: String

        public var state: String

        public var address: String

        public var code: String

        public var phone: String

        public var meta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case contactPerson = "contact_person"

            case fulfillmentChannel = "fulfillment_channel"

            case country

            case id

            case city

            case storeName = "store_name"

            case pincode

            case state

            case address

            case code

            case phone

            case meta
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.contactPerson = contactPerson

            self.fulfillmentChannel = fulfillmentChannel

            self.country = country

            self.id = id

            self.city = city

            self.storeName = storeName

            self.pincode = pincode

            self.state = state

            self.address = address

            self.code = code

            self.phone = phone

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            country = try container.decode(String.self, forKey: .country)

            id = try container.decode(Int.self, forKey: .id)

            city = try container.decode(String.self, forKey: .city)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)
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

        public var fulfillmentChannel: String

        public var country: String

        public var id: Int

        public var city: String

        public var storeName: String

        public var pincode: String

        public var state: String

        public var address: String

        public var code: String

        public var phone: String

        public var meta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case contactPerson = "contact_person"

            case fulfillmentChannel = "fulfillment_channel"

            case country

            case id

            case city

            case storeName = "store_name"

            case pincode

            case state

            case address

            case code

            case phone

            case meta
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.contactPerson = contactPerson

            self.fulfillmentChannel = fulfillmentChannel

            self.country = country

            self.id = id

            self.city = city

            self.storeName = storeName

            self.pincode = pincode

            self.state = state

            self.address = address

            self.code = code

            self.phone = phone

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            country = try container.decode(String.self, forKey: .country)

            id = try container.decode(Int.self, forKey: .id)

            city = try container.decode(String.self, forKey: .city)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
