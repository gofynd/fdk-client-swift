

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var code: String

        public var meta: [String: Any]

        public var id: Int

        public var pincode: String

        public var state: String

        public var fulfillmentChannel: String

        public var address: String

        public var phone: String

        public var city: String

        public var storeName: String

        public var contactPerson: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case code

            case meta

            case id

            case pincode

            case state

            case fulfillmentChannel = "fulfillment_channel"

            case address

            case phone

            case city

            case storeName = "store_name"

            case contactPerson = "contact_person"

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.code = code

            self.meta = meta

            self.id = id

            self.pincode = pincode

            self.state = state

            self.fulfillmentChannel = fulfillmentChannel

            self.address = address

            self.phone = phone

            self.city = city

            self.storeName = storeName

            self.contactPerson = contactPerson

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            meta = try container.decode([String: Any].self, forKey: .meta)

            id = try container.decode(Int.self, forKey: .id)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            storeName = try container.decode(String.self, forKey: .storeName)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var code: String

        public var meta: [String: Any]

        public var id: Int

        public var pincode: String

        public var state: String

        public var fulfillmentChannel: String

        public var address: String

        public var phone: String

        public var city: String

        public var storeName: String

        public var contactPerson: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case code

            case meta

            case id

            case pincode

            case state

            case fulfillmentChannel = "fulfillment_channel"

            case address

            case phone

            case city

            case storeName = "store_name"

            case contactPerson = "contact_person"

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.code = code

            self.meta = meta

            self.id = id

            self.pincode = pincode

            self.state = state

            self.fulfillmentChannel = fulfillmentChannel

            self.address = address

            self.phone = phone

            self.city = city

            self.storeName = storeName

            self.contactPerson = contactPerson

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            meta = try container.decode([String: Any].self, forKey: .meta)

            id = try container.decode(Int.self, forKey: .id)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            storeName = try container.decode(String.self, forKey: .storeName)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
