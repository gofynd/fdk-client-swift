

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var city: String

        public var pincode: String

        public var phone: String

        public var storeName: String

        public var state: String

        public var code: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var country: String

        public var id: Int

        public var fulfillmentChannel: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case city

            case pincode

            case phone

            case storeName = "store_name"

            case state

            case code

            case meta

            case contactPerson = "contact_person"

            case country

            case id

            case fulfillmentChannel = "fulfillment_channel"

            case address
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.city = city

            self.pincode = pincode

            self.phone = phone

            self.storeName = storeName

            self.state = state

            self.code = code

            self.meta = meta

            self.contactPerson = contactPerson

            self.country = country

            self.id = id

            self.fulfillmentChannel = fulfillmentChannel

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            id = try container.decode(Int.self, forKey: .id)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(id, forKey: .id)

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
        public var city: String

        public var pincode: String

        public var phone: String

        public var storeName: String

        public var state: String

        public var code: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var country: String

        public var id: Int

        public var fulfillmentChannel: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case city

            case pincode

            case phone

            case storeName = "store_name"

            case state

            case code

            case meta

            case contactPerson = "contact_person"

            case country

            case id

            case fulfillmentChannel = "fulfillment_channel"

            case address
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.city = city

            self.pincode = pincode

            self.phone = phone

            self.storeName = storeName

            self.state = state

            self.code = code

            self.meta = meta

            self.contactPerson = contactPerson

            self.country = country

            self.id = id

            self.fulfillmentChannel = fulfillmentChannel

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            id = try container.decode(Int.self, forKey: .id)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
