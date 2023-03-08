

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var address: String

        public var meta: [String: Any]

        public var id: Int

        public var contactPerson: String

        public var country: String

        public var storeName: String

        public var state: String

        public var pincode: String

        public var city: String

        public var code: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case address

            case meta

            case id

            case contactPerson = "contact_person"

            case country

            case storeName = "store_name"

            case state

            case pincode

            case city

            case code

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.meta = meta

            self.id = id

            self.contactPerson = contactPerson

            self.country = country

            self.storeName = storeName

            self.state = state

            self.pincode = pincode

            self.city = city

            self.code = code

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            meta = try container.decode([String: Any].self, forKey: .meta)

            id = try container.decode(Int.self, forKey: .id)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var address: String

        public var meta: [String: Any]

        public var id: Int

        public var contactPerson: String

        public var country: String

        public var storeName: String

        public var state: String

        public var pincode: String

        public var city: String

        public var code: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case address

            case meta

            case id

            case contactPerson = "contact_person"

            case country

            case storeName = "store_name"

            case state

            case pincode

            case city

            case code

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.meta = meta

            self.id = id

            self.contactPerson = contactPerson

            self.country = country

            self.storeName = storeName

            self.state = state

            self.pincode = pincode

            self.city = city

            self.code = code

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            meta = try container.decode([String: Any].self, forKey: .meta)

            id = try container.decode(Int.self, forKey: .id)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
