

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var state: String

        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var address: String

        public var code: String

        public var storeName: String

        public var id: Int

        public var city: String

        public var phone: String

        public var contactPerson: String

        public var country: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case state

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case address

            case code

            case storeName = "store_name"

            case id

            case city

            case phone

            case contactPerson = "contact_person"

            case country

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.state = state

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.address = address

            self.code = code

            self.storeName = storeName

            self.id = id

            self.city = city

            self.phone = phone

            self.contactPerson = contactPerson

            self.country = country

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)

            code = try container.decode(String.self, forKey: .code)

            storeName = try container.decode(String.self, forKey: .storeName)

            id = try container.decode(Int.self, forKey: .id)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

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
        public var state: String

        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var address: String

        public var code: String

        public var storeName: String

        public var id: Int

        public var city: String

        public var phone: String

        public var contactPerson: String

        public var country: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case state

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case address

            case code

            case storeName = "store_name"

            case id

            case city

            case phone

            case contactPerson = "contact_person"

            case country

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.state = state

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.address = address

            self.code = code

            self.storeName = storeName

            self.id = id

            self.city = city

            self.phone = phone

            self.contactPerson = contactPerson

            self.country = country

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)

            code = try container.decode(String.self, forKey: .code)

            storeName = try container.decode(String.self, forKey: .storeName)

            id = try container.decode(Int.self, forKey: .id)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
