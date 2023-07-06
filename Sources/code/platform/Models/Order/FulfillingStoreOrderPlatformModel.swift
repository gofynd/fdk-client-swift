

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var pincode: String

        public var id: Int

        public var state: String

        public var code: String

        public var contactPerson: String

        public var meta: [String: Any]

        public var country: String

        public var fulfillmentChannel: String

        public var address: String

        public var storeName: String

        public var phone: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case id

            case state

            case code

            case contactPerson = "contact_person"

            case meta

            case country

            case fulfillmentChannel = "fulfillment_channel"

            case address

            case storeName = "store_name"

            case phone

            case city
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.pincode = pincode

            self.id = id

            self.state = state

            self.code = code

            self.contactPerson = contactPerson

            self.meta = meta

            self.country = country

            self.fulfillmentChannel = fulfillmentChannel

            self.address = address

            self.storeName = storeName

            self.phone = phone

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            id = try container.decode(Int.self, forKey: .id)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode([String: Any].self, forKey: .meta)

            country = try container.decode(String.self, forKey: .country)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var pincode: String

        public var id: Int

        public var state: String

        public var code: String

        public var contactPerson: String

        public var meta: [String: Any]

        public var country: String

        public var fulfillmentChannel: String

        public var address: String

        public var storeName: String

        public var phone: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case id

            case state

            case code

            case contactPerson = "contact_person"

            case meta

            case country

            case fulfillmentChannel = "fulfillment_channel"

            case address

            case storeName = "store_name"

            case phone

            case city
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.pincode = pincode

            self.id = id

            self.state = state

            self.code = code

            self.contactPerson = contactPerson

            self.meta = meta

            self.country = country

            self.fulfillmentChannel = fulfillmentChannel

            self.address = address

            self.storeName = storeName

            self.phone = phone

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            id = try container.decode(Int.self, forKey: .id)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode([String: Any].self, forKey: .meta)

            country = try container.decode(String.self, forKey: .country)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
