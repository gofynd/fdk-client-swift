

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var orderingStoreId: Int

        public var phone: String

        public var code: String

        public var state: String

        public var country: String

        public var meta: [String: Any]

        public var city: String

        public var address: String

        public var contactPerson: String

        public var storeName: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case orderingStoreId = "ordering_store_id"

            case phone

            case code

            case state

            case country

            case meta

            case city

            case address

            case contactPerson = "contact_person"

            case storeName = "store_name"

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.orderingStoreId = orderingStoreId

            self.phone = phone

            self.code = code

            self.state = state

            self.country = country

            self.meta = meta

            self.city = city

            self.address = address

            self.contactPerson = contactPerson

            self.storeName = storeName

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            phone = try container.decode(String.self, forKey: .phone)

            code = try container.decode(String.self, forKey: .code)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

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
        public var orderingStoreId: Int

        public var phone: String

        public var code: String

        public var state: String

        public var country: String

        public var meta: [String: Any]

        public var city: String

        public var address: String

        public var contactPerson: String

        public var storeName: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case orderingStoreId = "ordering_store_id"

            case phone

            case code

            case state

            case country

            case meta

            case city

            case address

            case contactPerson = "contact_person"

            case storeName = "store_name"

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.orderingStoreId = orderingStoreId

            self.phone = phone

            self.code = code

            self.state = state

            self.country = country

            self.meta = meta

            self.city = city

            self.address = address

            self.contactPerson = contactPerson

            self.storeName = storeName

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            phone = try container.decode(String.self, forKey: .phone)

            code = try container.decode(String.self, forKey: .code)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
