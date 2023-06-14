

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var code: String

        public var address: String

        public var contactPerson: String

        public var storeName: String

        public var country: String

        public var state: String

        public var pincode: String

        public var phone: String

        public var orderingStoreId: Int

        public var meta: [String: Any]

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case code

            case address

            case contactPerson = "contact_person"

            case storeName = "store_name"

            case country

            case state

            case pincode

            case phone

            case orderingStoreId = "ordering_store_id"

            case meta

            case city
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.code = code

            self.address = address

            self.contactPerson = contactPerson

            self.storeName = storeName

            self.country = country

            self.state = state

            self.pincode = pincode

            self.phone = phone

            self.orderingStoreId = orderingStoreId

            self.meta = meta

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeName = try container.decode(String.self, forKey: .storeName)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)
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

        public var contactPerson: String

        public var storeName: String

        public var country: String

        public var state: String

        public var pincode: String

        public var phone: String

        public var orderingStoreId: Int

        public var meta: [String: Any]

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case code

            case address

            case contactPerson = "contact_person"

            case storeName = "store_name"

            case country

            case state

            case pincode

            case phone

            case orderingStoreId = "ordering_store_id"

            case meta

            case city
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.code = code

            self.address = address

            self.contactPerson = contactPerson

            self.storeName = storeName

            self.country = country

            self.state = state

            self.pincode = pincode

            self.phone = phone

            self.orderingStoreId = orderingStoreId

            self.meta = meta

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeName = try container.decode(String.self, forKey: .storeName)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
