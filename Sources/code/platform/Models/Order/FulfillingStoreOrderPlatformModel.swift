

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var storeName: String

        public var phone: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var city: String

        public var fulfillmentChannel: String

        public var id: Int

        public var address: String

        public var pincode: String

        public var state: String

        public var code: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case phone

            case meta

            case contactPerson = "contact_person"

            case city

            case fulfillmentChannel = "fulfillment_channel"

            case id

            case address

            case pincode

            case state

            case code

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.phone = phone

            self.meta = meta

            self.contactPerson = contactPerson

            self.city = city

            self.fulfillmentChannel = fulfillmentChannel

            self.id = id

            self.address = address

            self.pincode = pincode

            self.state = state

            self.code = code

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

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

        public var phone: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var city: String

        public var fulfillmentChannel: String

        public var id: Int

        public var address: String

        public var pincode: String

        public var state: String

        public var code: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case phone

            case meta

            case contactPerson = "contact_person"

            case city

            case fulfillmentChannel = "fulfillment_channel"

            case id

            case address

            case pincode

            case state

            case code

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.phone = phone

            self.meta = meta

            self.contactPerson = contactPerson

            self.city = city

            self.fulfillmentChannel = fulfillmentChannel

            self.id = id

            self.address = address

            self.pincode = pincode

            self.state = state

            self.code = code

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
