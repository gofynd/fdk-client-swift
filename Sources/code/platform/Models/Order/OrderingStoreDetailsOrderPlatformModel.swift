

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var storeName: String

        public var state: String

        public var pincode: String

        public var city: String

        public var contactPerson: String

        public var meta: [String: Any]

        public var phone: String

        public var orderingStoreId: Int

        public var country: String

        public var code: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case state

            case pincode

            case city

            case contactPerson = "contact_person"

            case meta

            case phone

            case orderingStoreId = "ordering_store_id"

            case country

            case code

            case address
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.state = state

            self.pincode = pincode

            self.city = city

            self.contactPerson = contactPerson

            self.meta = meta

            self.phone = phone

            self.orderingStoreId = orderingStoreId

            self.country = country

            self.code = code

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode([String: Any].self, forKey: .meta)

            phone = try container.decode(String.self, forKey: .phone)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            country = try container.decode(String.self, forKey: .country)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)
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

        public var pincode: String

        public var city: String

        public var contactPerson: String

        public var meta: [String: Any]

        public var phone: String

        public var orderingStoreId: Int

        public var country: String

        public var code: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case state

            case pincode

            case city

            case contactPerson = "contact_person"

            case meta

            case phone

            case orderingStoreId = "ordering_store_id"

            case country

            case code

            case address
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.state = state

            self.pincode = pincode

            self.city = city

            self.contactPerson = contactPerson

            self.meta = meta

            self.phone = phone

            self.orderingStoreId = orderingStoreId

            self.country = country

            self.code = code

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode([String: Any].self, forKey: .meta)

            phone = try container.decode(String.self, forKey: .phone)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            country = try container.decode(String.self, forKey: .country)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
