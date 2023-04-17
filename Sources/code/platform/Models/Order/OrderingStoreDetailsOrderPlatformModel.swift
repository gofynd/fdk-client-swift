

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var code: String

        public var address: String

        public var orderingStoreId: Int

        public var pincode: String

        public var contactPerson: String

        public var state: String

        public var country: String

        public var storeName: String

        public var city: String

        public var meta: [String: Any]

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case code

            case address

            case orderingStoreId = "ordering_store_id"

            case pincode

            case contactPerson = "contact_person"

            case state

            case country

            case storeName = "store_name"

            case city

            case meta

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.code = code

            self.address = address

            self.orderingStoreId = orderingStoreId

            self.pincode = pincode

            self.contactPerson = contactPerson

            self.state = state

            self.country = country

            self.storeName = storeName

            self.city = city

            self.meta = meta

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            pincode = try container.decode(String.self, forKey: .pincode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

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
        public var code: String

        public var address: String

        public var orderingStoreId: Int

        public var pincode: String

        public var contactPerson: String

        public var state: String

        public var country: String

        public var storeName: String

        public var city: String

        public var meta: [String: Any]

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case code

            case address

            case orderingStoreId = "ordering_store_id"

            case pincode

            case contactPerson = "contact_person"

            case state

            case country

            case storeName = "store_name"

            case city

            case meta

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.code = code

            self.address = address

            self.orderingStoreId = orderingStoreId

            self.pincode = pincode

            self.contactPerson = contactPerson

            self.state = state

            self.country = country

            self.storeName = storeName

            self.city = city

            self.meta = meta

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            pincode = try container.decode(String.self, forKey: .pincode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
