

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var pincode: String

        public var storeName: String

        public var meta: [String: Any]

        public var code: String

        public var id: Int

        public var address: String

        public var contactPerson: String

        public var phone: String

        public var city: String

        public var state: String

        public var country: String

        public var fulfillmentChannel: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case storeName = "store_name"

            case meta

            case code

            case id

            case address

            case contactPerson = "contact_person"

            case phone

            case city

            case state

            case country

            case fulfillmentChannel = "fulfillment_channel"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.pincode = pincode

            self.storeName = storeName

            self.meta = meta

            self.code = code

            self.id = id

            self.address = address

            self.contactPerson = contactPerson

            self.phone = phone

            self.city = city

            self.state = state

            self.country = country

            self.fulfillmentChannel = fulfillmentChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            storeName = try container.decode(String.self, forKey: .storeName)

            meta = try container.decode([String: Any].self, forKey: .meta)

            code = try container.decode(String.self, forKey: .code)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
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

        public var storeName: String

        public var meta: [String: Any]

        public var code: String

        public var id: Int

        public var address: String

        public var contactPerson: String

        public var phone: String

        public var city: String

        public var state: String

        public var country: String

        public var fulfillmentChannel: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case storeName = "store_name"

            case meta

            case code

            case id

            case address

            case contactPerson = "contact_person"

            case phone

            case city

            case state

            case country

            case fulfillmentChannel = "fulfillment_channel"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.pincode = pincode

            self.storeName = storeName

            self.meta = meta

            self.code = code

            self.id = id

            self.address = address

            self.contactPerson = contactPerson

            self.phone = phone

            self.city = city

            self.state = state

            self.country = country

            self.fulfillmentChannel = fulfillmentChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            storeName = try container.decode(String.self, forKey: .storeName)

            meta = try container.decode([String: Any].self, forKey: .meta)

            code = try container.decode(String.self, forKey: .code)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
        }
    }
}
