

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var address: String

        public var storeName: String

        public var pincode: String

        public var phone: String

        public var state: String

        public var country: String

        public var meta: [String: Any]

        public var orderingStoreId: Int

        public var contactPerson: String

        public var code: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case address

            case storeName = "store_name"

            case pincode

            case phone

            case state

            case country

            case meta

            case orderingStoreId = "ordering_store_id"

            case contactPerson = "contact_person"

            case code

            case city
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.storeName = storeName

            self.pincode = pincode

            self.phone = phone

            self.state = state

            self.country = country

            self.meta = meta

            self.orderingStoreId = orderingStoreId

            self.contactPerson = contactPerson

            self.code = code

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            meta = try container.decode([String: Any].self, forKey: .meta)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

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
        public var address: String

        public var storeName: String

        public var pincode: String

        public var phone: String

        public var state: String

        public var country: String

        public var meta: [String: Any]

        public var orderingStoreId: Int

        public var contactPerson: String

        public var code: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case address

            case storeName = "store_name"

            case pincode

            case phone

            case state

            case country

            case meta

            case orderingStoreId = "ordering_store_id"

            case contactPerson = "contact_person"

            case code

            case city
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.storeName = storeName

            self.pincode = pincode

            self.phone = phone

            self.state = state

            self.country = country

            self.meta = meta

            self.orderingStoreId = orderingStoreId

            self.contactPerson = contactPerson

            self.code = code

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            meta = try container.decode([String: Any].self, forKey: .meta)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
