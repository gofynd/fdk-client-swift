

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStore
         Used By: Order
     */

    class OrderingStore: Codable {
        public var phone: String

        public var id: String

        public var country: String

        public var code: String

        public var city: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var state: String

        public var storeName: String

        public var address: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case id

            case country

            case code

            case city

            case meta

            case contactPerson = "contact_person"

            case state

            case storeName = "store_name"

            case address

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.phone = phone

            self.id = id

            self.country = country

            self.code = code

            self.city = city

            self.meta = meta

            self.contactPerson = contactPerson

            self.state = state

            self.storeName = storeName

            self.address = address

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            id = try container.decode(String.self, forKey: .id)

            country = try container.decode(String.self, forKey: .country)

            code = try container.decode(String.self, forKey: .code)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            state = try container.decode(String.self, forKey: .state)

            storeName = try container.decode(String.self, forKey: .storeName)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderingStore
         Used By: Order
     */

    class OrderingStore: Codable {
        public var phone: String

        public var id: String

        public var country: String

        public var code: String

        public var city: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var state: String

        public var storeName: String

        public var address: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case id

            case country

            case code

            case city

            case meta

            case contactPerson = "contact_person"

            case state

            case storeName = "store_name"

            case address

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.phone = phone

            self.id = id

            self.country = country

            self.code = code

            self.city = city

            self.meta = meta

            self.contactPerson = contactPerson

            self.state = state

            self.storeName = storeName

            self.address = address

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            id = try container.decode(String.self, forKey: .id)

            country = try container.decode(String.self, forKey: .country)

            code = try container.decode(String.self, forKey: .code)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            state = try container.decode(String.self, forKey: .state)

            storeName = try container.decode(String.self, forKey: .storeName)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
