

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var address: String

        public var phone: String

        public var id: Int

        public var city: String

        public var country: String

        public var contactPerson: String

        public var storeName: String

        public var state: String

        public var code: String

        public var meta: [String: Any]

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case address

            case phone

            case id

            case city

            case country

            case contactPerson = "contact_person"

            case storeName = "store_name"

            case state

            case code

            case meta

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.phone = phone

            self.id = id

            self.city = city

            self.country = country

            self.contactPerson = contactPerson

            self.storeName = storeName

            self.state = state

            self.code = code

            self.meta = meta

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            phone = try container.decode(String.self, forKey: .phone)

            id = try container.decode(Int.self, forKey: .id)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            meta = try container.decode([String: Any].self, forKey: .meta)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
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

        public var phone: String

        public var id: Int

        public var city: String

        public var country: String

        public var contactPerson: String

        public var storeName: String

        public var state: String

        public var code: String

        public var meta: [String: Any]

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case address

            case phone

            case id

            case city

            case country

            case contactPerson = "contact_person"

            case storeName = "store_name"

            case state

            case code

            case meta

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.phone = phone

            self.id = id

            self.city = city

            self.country = country

            self.contactPerson = contactPerson

            self.storeName = storeName

            self.state = state

            self.code = code

            self.meta = meta

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            phone = try container.decode(String.self, forKey: .phone)

            id = try container.decode(Int.self, forKey: .id)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            meta = try container.decode([String: Any].self, forKey: .meta)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
