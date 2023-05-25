

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var storeName: String

        public var state: String

        public var pincode: String

        public var city: String

        public var contactPerson: String

        public var fulfillmentChannel: String

        public var meta: [String: Any]

        public var phone: String

        public var country: String

        public var code: String

        public var address: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case state

            case pincode

            case city

            case contactPerson = "contact_person"

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case phone

            case country

            case code

            case address

            case id
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.state = state

            self.pincode = pincode

            self.city = city

            self.contactPerson = contactPerson

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.phone = phone

            self.country = country

            self.code = code

            self.address = address

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode([String: Any].self, forKey: .meta)

            phone = try container.decode(String.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(id, forKey: .id)
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

        public var state: String

        public var pincode: String

        public var city: String

        public var contactPerson: String

        public var fulfillmentChannel: String

        public var meta: [String: Any]

        public var phone: String

        public var country: String

        public var code: String

        public var address: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case state

            case pincode

            case city

            case contactPerson = "contact_person"

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case phone

            case country

            case code

            case address

            case id
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.state = state

            self.pincode = pincode

            self.city = city

            self.contactPerson = contactPerson

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.phone = phone

            self.country = country

            self.code = code

            self.address = address

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode([String: Any].self, forKey: .meta)

            phone = try container.decode(String.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
