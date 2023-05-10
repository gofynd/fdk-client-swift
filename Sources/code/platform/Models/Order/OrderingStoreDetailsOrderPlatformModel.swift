

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var storeName: String

        public var contactPerson: String

        public var meta: [String: Any]

        public var city: String

        public var address: String

        public var state: String

        public var orderingStoreId: Int

        public var phone: String

        public var pincode: String

        public var code: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case contactPerson = "contact_person"

            case meta

            case city

            case address

            case state

            case orderingStoreId = "ordering_store_id"

            case phone

            case pincode

            case code

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.contactPerson = contactPerson

            self.meta = meta

            self.city = city

            self.address = address

            self.state = state

            self.orderingStoreId = orderingStoreId

            self.phone = phone

            self.pincode = pincode

            self.code = code

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            state = try container.decode(String.self, forKey: .state)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

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
        public var storeName: String

        public var contactPerson: String

        public var meta: [String: Any]

        public var city: String

        public var address: String

        public var state: String

        public var orderingStoreId: Int

        public var phone: String

        public var pincode: String

        public var code: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case contactPerson = "contact_person"

            case meta

            case city

            case address

            case state

            case orderingStoreId = "ordering_store_id"

            case phone

            case pincode

            case code

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.contactPerson = contactPerson

            self.meta = meta

            self.city = city

            self.address = address

            self.state = state

            self.orderingStoreId = orderingStoreId

            self.phone = phone

            self.pincode = pincode

            self.code = code

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            state = try container.decode(String.self, forKey: .state)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
