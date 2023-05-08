

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var orderingStoreId: Int

        public var address: String

        public var country: String

        public var contactPerson: String

        public var city: String

        public var meta: [String: Any]

        public var state: String

        public var storeName: String

        public var pincode: String

        public var phone: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case orderingStoreId = "ordering_store_id"

            case address

            case country

            case contactPerson = "contact_person"

            case city

            case meta

            case state

            case storeName = "store_name"

            case pincode

            case phone

            case code
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.orderingStoreId = orderingStoreId

            self.address = address

            self.country = country

            self.contactPerson = contactPerson

            self.city = city

            self.meta = meta

            self.state = state

            self.storeName = storeName

            self.pincode = pincode

            self.phone = phone

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            address = try container.decode(String.self, forKey: .address)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            state = try container.decode(String.self, forKey: .state)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)
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

        public var address: String

        public var country: String

        public var contactPerson: String

        public var city: String

        public var meta: [String: Any]

        public var state: String

        public var storeName: String

        public var pincode: String

        public var phone: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case orderingStoreId = "ordering_store_id"

            case address

            case country

            case contactPerson = "contact_person"

            case city

            case meta

            case state

            case storeName = "store_name"

            case pincode

            case phone

            case code
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.orderingStoreId = orderingStoreId

            self.address = address

            self.country = country

            self.contactPerson = contactPerson

            self.city = city

            self.meta = meta

            self.state = state

            self.storeName = storeName

            self.pincode = pincode

            self.phone = phone

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            address = try container.decode(String.self, forKey: .address)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            state = try container.decode(String.self, forKey: .state)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
