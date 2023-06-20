

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

        public var id: Int

        public var code: String

        public var pincode: String

        public var state: String

        public var city: String

        public var country: String

        public var contactPerson: String

        public var fulfillmentChannel: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case phone

            case meta

            case id

            case code

            case pincode

            case state

            case city

            case country

            case contactPerson = "contact_person"

            case fulfillmentChannel = "fulfillment_channel"

            case address
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.phone = phone

            self.meta = meta

            self.id = id

            self.code = code

            self.pincode = pincode

            self.state = state

            self.city = city

            self.country = country

            self.contactPerson = contactPerson

            self.fulfillmentChannel = fulfillmentChannel

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)

            id = try container.decode(Int.self, forKey: .id)

            code = try container.decode(String.self, forKey: .code)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)
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

        public var id: Int

        public var code: String

        public var pincode: String

        public var state: String

        public var city: String

        public var country: String

        public var contactPerson: String

        public var fulfillmentChannel: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case phone

            case meta

            case id

            case code

            case pincode

            case state

            case city

            case country

            case contactPerson = "contact_person"

            case fulfillmentChannel = "fulfillment_channel"

            case address
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.phone = phone

            self.meta = meta

            self.id = id

            self.code = code

            self.pincode = pincode

            self.state = state

            self.city = city

            self.country = country

            self.contactPerson = contactPerson

            self.fulfillmentChannel = fulfillmentChannel

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)

            id = try container.decode(Int.self, forKey: .id)

            code = try container.decode(String.self, forKey: .code)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
