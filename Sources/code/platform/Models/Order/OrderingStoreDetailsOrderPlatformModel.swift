

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var phone: String

        public var storeName: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var city: String

        public var orderingStoreId: Int

        public var address: String

        public var pincode: String

        public var state: String

        public var code: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case storeName = "store_name"

            case meta

            case contactPerson = "contact_person"

            case city

            case orderingStoreId = "ordering_store_id"

            case address

            case pincode

            case state

            case code

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.phone = phone

            self.storeName = storeName

            self.meta = meta

            self.contactPerson = contactPerson

            self.city = city

            self.orderingStoreId = orderingStoreId

            self.address = address

            self.pincode = pincode

            self.state = state

            self.code = code

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)
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

        public var meta: [String: Any]

        public var contactPerson: String

        public var city: String

        public var orderingStoreId: Int

        public var address: String

        public var pincode: String

        public var state: String

        public var code: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case storeName = "store_name"

            case meta

            case contactPerson = "contact_person"

            case city

            case orderingStoreId = "ordering_store_id"

            case address

            case pincode

            case state

            case code

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.phone = phone

            self.storeName = storeName

            self.meta = meta

            self.contactPerson = contactPerson

            self.city = city

            self.orderingStoreId = orderingStoreId

            self.address = address

            self.pincode = pincode

            self.state = state

            self.code = code

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
