

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var country: String

        public var state: String

        public var address: String

        public var pincode: String

        public var id: Int

        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var contactPerson: String

        public var city: String

        public var storeName: String

        public var phone: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case country

            case state

            case address

            case pincode

            case id

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case contactPerson = "contact_person"

            case city

            case storeName = "store_name"

            case phone

            case code
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.country = country

            self.state = state

            self.address = address

            self.pincode = pincode

            self.id = id

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.contactPerson = contactPerson

            self.city = city

            self.storeName = storeName

            self.phone = phone

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            id = try container.decode(Int.self, forKey: .id)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)
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

        public var state: String

        public var address: String

        public var pincode: String

        public var id: Int

        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var contactPerson: String

        public var city: String

        public var storeName: String

        public var phone: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case country

            case state

            case address

            case pincode

            case id

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case contactPerson = "contact_person"

            case city

            case storeName = "store_name"

            case phone

            case code
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.country = country

            self.state = state

            self.address = address

            self.pincode = pincode

            self.id = id

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.contactPerson = contactPerson

            self.city = city

            self.storeName = storeName

            self.phone = phone

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            id = try container.decode(Int.self, forKey: .id)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
