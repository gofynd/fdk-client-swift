

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var storeName: String

        public var contactPerson: String

        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var city: String

        public var id: Int

        public var address: String

        public var state: String

        public var phone: String

        public var pincode: String

        public var code: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case contactPerson = "contact_person"

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case city

            case id

            case address

            case state

            case phone

            case pincode

            case code

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.contactPerson = contactPerson

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.city = city

            self.id = id

            self.address = address

            self.state = state

            self.phone = phone

            self.pincode = pincode

            self.code = code

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            city = try container.decode(String.self, forKey: .city)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(code, forKey: .code)

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
        public var storeName: String

        public var contactPerson: String

        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var city: String

        public var id: Int

        public var address: String

        public var state: String

        public var phone: String

        public var pincode: String

        public var code: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case contactPerson = "contact_person"

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case city

            case id

            case address

            case state

            case phone

            case pincode

            case code

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.contactPerson = contactPerson

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.city = city

            self.id = id

            self.address = address

            self.state = state

            self.phone = phone

            self.pincode = pincode

            self.code = code

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            city = try container.decode(String.self, forKey: .city)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
