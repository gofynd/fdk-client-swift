

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var address: String

        public var storeName: String

        public var id: Int

        public var pincode: String

        public var phone: String

        public var fulfillmentChannel: String

        public var state: String

        public var country: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var code: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case address

            case storeName = "store_name"

            case id

            case pincode

            case phone

            case fulfillmentChannel = "fulfillment_channel"

            case state

            case country

            case meta

            case contactPerson = "contact_person"

            case code

            case city
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.storeName = storeName

            self.id = id

            self.pincode = pincode

            self.phone = phone

            self.fulfillmentChannel = fulfillmentChannel

            self.state = state

            self.country = country

            self.meta = meta

            self.contactPerson = contactPerson

            self.code = code

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            id = try container.decode(Int.self, forKey: .id)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

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
        public var address: String

        public var storeName: String

        public var id: Int

        public var pincode: String

        public var phone: String

        public var fulfillmentChannel: String

        public var state: String

        public var country: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var code: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case address

            case storeName = "store_name"

            case id

            case pincode

            case phone

            case fulfillmentChannel = "fulfillment_channel"

            case state

            case country

            case meta

            case contactPerson = "contact_person"

            case code

            case city
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.storeName = storeName

            self.id = id

            self.pincode = pincode

            self.phone = phone

            self.fulfillmentChannel = fulfillmentChannel

            self.state = state

            self.country = country

            self.meta = meta

            self.contactPerson = contactPerson

            self.code = code

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            id = try container.decode(Int.self, forKey: .id)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
