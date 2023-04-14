

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var storeName: String

        public var code: String

        public var phone: String

        public var meta: [String: Any]

        public var city: String

        public var country: String

        public var pincode: String

        public var id: Int

        public var state: String

        public var contactPerson: String

        public var address: String

        public var fulfillmentChannel: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case code

            case phone

            case meta

            case city

            case country

            case pincode

            case id

            case state

            case contactPerson = "contact_person"

            case address

            case fulfillmentChannel = "fulfillment_channel"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.code = code

            self.phone = phone

            self.meta = meta

            self.city = city

            self.country = country

            self.pincode = pincode

            self.id = id

            self.state = state

            self.contactPerson = contactPerson

            self.address = address

            self.fulfillmentChannel = fulfillmentChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            id = try container.decode(Int.self, forKey: .id)

            state = try container.decode(String.self, forKey: .state)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            address = try container.decode(String.self, forKey: .address)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address, forKey: .address)

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
        public var storeName: String

        public var code: String

        public var phone: String

        public var meta: [String: Any]

        public var city: String

        public var country: String

        public var pincode: String

        public var id: Int

        public var state: String

        public var contactPerson: String

        public var address: String

        public var fulfillmentChannel: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case code

            case phone

            case meta

            case city

            case country

            case pincode

            case id

            case state

            case contactPerson = "contact_person"

            case address

            case fulfillmentChannel = "fulfillment_channel"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.code = code

            self.phone = phone

            self.meta = meta

            self.city = city

            self.country = country

            self.pincode = pincode

            self.id = id

            self.state = state

            self.contactPerson = contactPerson

            self.address = address

            self.fulfillmentChannel = fulfillmentChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            id = try container.decode(Int.self, forKey: .id)

            state = try container.decode(String.self, forKey: .state)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            address = try container.decode(String.self, forKey: .address)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
        }
    }
}
