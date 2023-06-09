

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var country: String

        public var storeName: String

        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var phone: String

        public var city: String

        public var code: String

        public var contactPerson: String

        public var id: Int

        public var address: String

        public var pincode: String

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case country

            case storeName = "store_name"

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case phone

            case city

            case code

            case contactPerson = "contact_person"

            case id

            case address

            case pincode

            case state
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.country = country

            self.storeName = storeName

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.phone = phone

            self.city = city

            self.code = code

            self.contactPerson = contactPerson

            self.id = id

            self.address = address

            self.pincode = pincode

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            code = try container.decode(String.self, forKey: .code)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

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
        public var country: String

        public var storeName: String

        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var phone: String

        public var city: String

        public var code: String

        public var contactPerson: String

        public var id: Int

        public var address: String

        public var pincode: String

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case country

            case storeName = "store_name"

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case phone

            case city

            case code

            case contactPerson = "contact_person"

            case id

            case address

            case pincode

            case state
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.country = country

            self.storeName = storeName

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.phone = phone

            self.city = city

            self.code = code

            self.contactPerson = contactPerson

            self.id = id

            self.address = address

            self.pincode = pincode

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            code = try container.decode(String.self, forKey: .code)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
