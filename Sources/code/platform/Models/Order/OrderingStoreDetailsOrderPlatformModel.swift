

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var storeName: String

        public var state: String

        public var orderingStoreId: Int

        public var pincode: String

        public var meta: [String: Any]

        public var city: String

        public var phone: String

        public var contactPerson: String

        public var country: String

        public var address: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case state

            case orderingStoreId = "ordering_store_id"

            case pincode

            case meta

            case city

            case phone

            case contactPerson = "contact_person"

            case country

            case address

            case code
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.state = state

            self.orderingStoreId = orderingStoreId

            self.pincode = pincode

            self.meta = meta

            self.city = city

            self.phone = phone

            self.contactPerson = contactPerson

            self.country = country

            self.address = address

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            pincode = try container.decode(String.self, forKey: .pincode)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            address = try container.decode(String.self, forKey: .address)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address, forKey: .address)

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
        public var storeName: String

        public var state: String

        public var orderingStoreId: Int

        public var pincode: String

        public var meta: [String: Any]

        public var city: String

        public var phone: String

        public var contactPerson: String

        public var country: String

        public var address: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case state

            case orderingStoreId = "ordering_store_id"

            case pincode

            case meta

            case city

            case phone

            case contactPerson = "contact_person"

            case country

            case address

            case code
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.state = state

            self.orderingStoreId = orderingStoreId

            self.pincode = pincode

            self.meta = meta

            self.city = city

            self.phone = phone

            self.contactPerson = contactPerson

            self.country = country

            self.address = address

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            pincode = try container.decode(String.self, forKey: .pincode)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            address = try container.decode(String.self, forKey: .address)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
