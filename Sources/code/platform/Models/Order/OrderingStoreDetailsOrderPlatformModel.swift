

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var city: String

        public var address: String

        public var state: String

        public var country: String

        public var orderingStoreId: Int

        public var code: String

        public var meta: [String: Any]

        public var storeName: String

        public var pincode: String

        public var phone: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case city

            case address

            case state

            case country

            case orderingStoreId = "ordering_store_id"

            case code

            case meta

            case storeName = "store_name"

            case pincode

            case phone

            case contactPerson = "contact_person"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.city = city

            self.address = address

            self.state = state

            self.country = country

            self.orderingStoreId = orderingStoreId

            self.code = code

            self.meta = meta

            self.storeName = storeName

            self.pincode = pincode

            self.phone = phone

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            code = try container.decode(String.self, forKey: .code)

            meta = try container.decode([String: Any].self, forKey: .meta)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

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
        public var city: String

        public var address: String

        public var state: String

        public var country: String

        public var orderingStoreId: Int

        public var code: String

        public var meta: [String: Any]

        public var storeName: String

        public var pincode: String

        public var phone: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case city

            case address

            case state

            case country

            case orderingStoreId = "ordering_store_id"

            case code

            case meta

            case storeName = "store_name"

            case pincode

            case phone

            case contactPerson = "contact_person"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.city = city

            self.address = address

            self.state = state

            self.country = country

            self.orderingStoreId = orderingStoreId

            self.code = code

            self.meta = meta

            self.storeName = storeName

            self.pincode = pincode

            self.phone = phone

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            code = try container.decode(String.self, forKey: .code)

            meta = try container.decode([String: Any].self, forKey: .meta)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
