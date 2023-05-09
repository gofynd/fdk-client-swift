

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var id: Int

        public var phone: String

        public var storeName: String

        public var state: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var code: String

        public var country: String

        public var fulfillmentChannel: String

        public var city: String

        public var address: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case id

            case phone

            case storeName = "store_name"

            case state

            case meta

            case contactPerson = "contact_person"

            case code

            case country

            case fulfillmentChannel = "fulfillment_channel"

            case city

            case address

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.id = id

            self.phone = phone

            self.storeName = storeName

            self.state = state

            self.meta = meta

            self.contactPerson = contactPerson

            self.code = code

            self.country = country

            self.fulfillmentChannel = fulfillmentChannel

            self.city = city

            self.address = address

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)

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
        public var id: Int

        public var phone: String

        public var storeName: String

        public var state: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var code: String

        public var country: String

        public var fulfillmentChannel: String

        public var city: String

        public var address: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case id

            case phone

            case storeName = "store_name"

            case state

            case meta

            case contactPerson = "contact_person"

            case code

            case country

            case fulfillmentChannel = "fulfillment_channel"

            case city

            case address

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.id = id

            self.phone = phone

            self.storeName = storeName

            self.state = state

            self.meta = meta

            self.contactPerson = contactPerson

            self.code = code

            self.country = country

            self.fulfillmentChannel = fulfillmentChannel

            self.city = city

            self.address = address

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
