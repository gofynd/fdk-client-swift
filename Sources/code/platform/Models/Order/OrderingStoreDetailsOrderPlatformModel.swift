

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var country: String

        public var state: String

        public var address: String

        public var storeName: String

        public var code: String

        public var contactPerson: String

        public var phone: String

        public var orderingStoreId: Int

        public var meta: [String: Any]

        public var pincode: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case country

            case state

            case address

            case storeName = "store_name"

            case code

            case contactPerson = "contact_person"

            case phone

            case orderingStoreId = "ordering_store_id"

            case meta

            case pincode

            case city
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.country = country

            self.state = state

            self.address = address

            self.storeName = storeName

            self.code = code

            self.contactPerson = contactPerson

            self.phone = phone

            self.orderingStoreId = orderingStoreId

            self.meta = meta

            self.pincode = pincode

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            code = try container.decode(String.self, forKey: .code)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            meta = try container.decode([String: Any].self, forKey: .meta)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

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
        public var country: String

        public var state: String

        public var address: String

        public var storeName: String

        public var code: String

        public var contactPerson: String

        public var phone: String

        public var orderingStoreId: Int

        public var meta: [String: Any]

        public var pincode: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case country

            case state

            case address

            case storeName = "store_name"

            case code

            case contactPerson = "contact_person"

            case phone

            case orderingStoreId = "ordering_store_id"

            case meta

            case pincode

            case city
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.country = country

            self.state = state

            self.address = address

            self.storeName = storeName

            self.code = code

            self.contactPerson = contactPerson

            self.phone = phone

            self.orderingStoreId = orderingStoreId

            self.meta = meta

            self.pincode = pincode

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            code = try container.decode(String.self, forKey: .code)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            meta = try container.decode([String: Any].self, forKey: .meta)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
