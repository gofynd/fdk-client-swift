

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var phone: String

        public var storeName: String

        public var state: String

        public var meta: [String: Any]

        public var orderingStoreId: Int

        public var code: String

        public var contactPerson: String

        public var country: String

        public var city: String

        public var address: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case storeName = "store_name"

            case state

            case meta

            case orderingStoreId = "ordering_store_id"

            case code

            case contactPerson = "contact_person"

            case country

            case city

            case address

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.phone = phone

            self.storeName = storeName

            self.state = state

            self.meta = meta

            self.orderingStoreId = orderingStoreId

            self.code = code

            self.contactPerson = contactPerson

            self.country = country

            self.city = city

            self.address = address

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode([String: Any].self, forKey: .meta)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            code = try container.decode(String.self, forKey: .code)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)

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
        public var phone: String

        public var storeName: String

        public var state: String

        public var meta: [String: Any]

        public var orderingStoreId: Int

        public var code: String

        public var contactPerson: String

        public var country: String

        public var city: String

        public var address: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case storeName = "store_name"

            case state

            case meta

            case orderingStoreId = "ordering_store_id"

            case code

            case contactPerson = "contact_person"

            case country

            case city

            case address

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.phone = phone

            self.storeName = storeName

            self.state = state

            self.meta = meta

            self.orderingStoreId = orderingStoreId

            self.code = code

            self.contactPerson = contactPerson

            self.country = country

            self.city = city

            self.address = address

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode([String: Any].self, forKey: .meta)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            code = try container.decode(String.self, forKey: .code)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
