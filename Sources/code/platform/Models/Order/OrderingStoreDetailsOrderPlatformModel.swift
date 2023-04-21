

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var state: String

        public var code: String

        public var orderingStoreId: Int

        public var city: String

        public var country: String

        public var pincode: String

        public var meta: [String: Any]

        public var address: String

        public var phone: String

        public var storeName: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case state

            case code

            case orderingStoreId = "ordering_store_id"

            case city

            case country

            case pincode

            case meta

            case address

            case phone

            case storeName = "store_name"

            case contactPerson = "contact_person"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.state = state

            self.code = code

            self.orderingStoreId = orderingStoreId

            self.city = city

            self.country = country

            self.pincode = pincode

            self.meta = meta

            self.address = address

            self.phone = phone

            self.storeName = storeName

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            meta = try container.decode([String: Any].self, forKey: .meta)

            address = try container.decode(String.self, forKey: .address)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var state: String

        public var code: String

        public var orderingStoreId: Int

        public var city: String

        public var country: String

        public var pincode: String

        public var meta: [String: Any]

        public var address: String

        public var phone: String

        public var storeName: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case state

            case code

            case orderingStoreId = "ordering_store_id"

            case city

            case country

            case pincode

            case meta

            case address

            case phone

            case storeName = "store_name"

            case contactPerson = "contact_person"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.state = state

            self.code = code

            self.orderingStoreId = orderingStoreId

            self.city = city

            self.country = country

            self.pincode = pincode

            self.meta = meta

            self.address = address

            self.phone = phone

            self.storeName = storeName

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            meta = try container.decode([String: Any].self, forKey: .meta)

            address = try container.decode(String.self, forKey: .address)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
