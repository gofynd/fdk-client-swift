

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var phone: String

        public var contactPerson: String

        public var state: String

        public var country: String

        public var storeName: String

        public var pincode: String

        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var city: String

        public var id: Int

        public var code: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case contactPerson = "contact_person"

            case state

            case country

            case storeName = "store_name"

            case pincode

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case city

            case id

            case code

            case address
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.phone = phone

            self.contactPerson = contactPerson

            self.state = state

            self.country = country

            self.storeName = storeName

            self.pincode = pincode

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.city = city

            self.id = id

            self.code = code

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            city = try container.decode(String.self, forKey: .city)

            id = try container.decode(Int.self, forKey: .id)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(code, forKey: .code)

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
        public var phone: String

        public var contactPerson: String

        public var state: String

        public var country: String

        public var storeName: String

        public var pincode: String

        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var city: String

        public var id: Int

        public var code: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case contactPerson = "contact_person"

            case state

            case country

            case storeName = "store_name"

            case pincode

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case city

            case id

            case code

            case address
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.phone = phone

            self.contactPerson = contactPerson

            self.state = state

            self.country = country

            self.storeName = storeName

            self.pincode = pincode

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.city = city

            self.id = id

            self.code = code

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            city = try container.decode(String.self, forKey: .city)

            id = try container.decode(Int.self, forKey: .id)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
