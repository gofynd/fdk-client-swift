

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var storeName: String

        public var address: String

        public var city: String

        public var code: String

        public var fulfillmentChannel: String

        public var phone: String

        public var contactPerson: String

        public var pincode: String

        public var meta: [String: Any]

        public var id: Int

        public var country: String

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case address

            case city

            case code

            case fulfillmentChannel = "fulfillment_channel"

            case phone

            case contactPerson = "contact_person"

            case pincode

            case meta

            case id

            case country

            case state
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.address = address

            self.city = city

            self.code = code

            self.fulfillmentChannel = fulfillmentChannel

            self.phone = phone

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.meta = meta

            self.id = id

            self.country = country

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            address = try container.decode(String.self, forKey: .address)

            city = try container.decode(String.self, forKey: .city)

            code = try container.decode(String.self, forKey: .code)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            meta = try container.decode([String: Any].self, forKey: .meta)

            id = try container.decode(Int.self, forKey: .id)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)
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

        public var city: String

        public var code: String

        public var fulfillmentChannel: String

        public var phone: String

        public var contactPerson: String

        public var pincode: String

        public var meta: [String: Any]

        public var id: Int

        public var country: String

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case address

            case city

            case code

            case fulfillmentChannel = "fulfillment_channel"

            case phone

            case contactPerson = "contact_person"

            case pincode

            case meta

            case id

            case country

            case state
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.address = address

            self.city = city

            self.code = code

            self.fulfillmentChannel = fulfillmentChannel

            self.phone = phone

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.meta = meta

            self.id = id

            self.country = country

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            address = try container.decode(String.self, forKey: .address)

            city = try container.decode(String.self, forKey: .city)

            code = try container.decode(String.self, forKey: .code)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            meta = try container.decode([String: Any].self, forKey: .meta)

            id = try container.decode(Int.self, forKey: .id)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
