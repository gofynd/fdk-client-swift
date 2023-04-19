

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var meta: [String: Any]

        public var id: Int

        public var address: String

        public var pincode: String

        public var code: String

        public var city: String

        public var country: String

        public var contactPerson: String

        public var fulfillmentChannel: String

        public var state: String

        public var phone: String

        public var storeName: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case id

            case address

            case pincode

            case code

            case city

            case country

            case contactPerson = "contact_person"

            case fulfillmentChannel = "fulfillment_channel"

            case state

            case phone

            case storeName = "store_name"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.id = id

            self.address = address

            self.pincode = pincode

            self.code = code

            self.city = city

            self.country = country

            self.contactPerson = contactPerson

            self.fulfillmentChannel = fulfillmentChannel

            self.state = state

            self.phone = phone

            self.storeName = storeName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            code = try container.decode(String.self, forKey: .code)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var meta: [String: Any]

        public var id: Int

        public var address: String

        public var pincode: String

        public var code: String

        public var city: String

        public var country: String

        public var contactPerson: String

        public var fulfillmentChannel: String

        public var state: String

        public var phone: String

        public var storeName: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case id

            case address

            case pincode

            case code

            case city

            case country

            case contactPerson = "contact_person"

            case fulfillmentChannel = "fulfillment_channel"

            case state

            case phone

            case storeName = "store_name"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.id = id

            self.address = address

            self.pincode = pincode

            self.code = code

            self.city = city

            self.country = country

            self.contactPerson = contactPerson

            self.fulfillmentChannel = fulfillmentChannel

            self.state = state

            self.phone = phone

            self.storeName = storeName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            code = try container.decode(String.self, forKey: .code)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)
        }
    }
}
