

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var city: String

        public var pincode: String

        public var orderingStoreId: Int

        public var phone: String

        public var state: String

        public var code: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var country: String

        public var storeName: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case city

            case pincode

            case orderingStoreId = "ordering_store_id"

            case phone

            case state

            case code

            case meta

            case contactPerson = "contact_person"

            case country

            case storeName = "store_name"

            case address
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.city = city

            self.pincode = pincode

            self.orderingStoreId = orderingStoreId

            self.phone = phone

            self.state = state

            self.code = code

            self.meta = meta

            self.contactPerson = contactPerson

            self.country = country

            self.storeName = storeName

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

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
        public var city: String

        public var pincode: String

        public var orderingStoreId: Int

        public var phone: String

        public var state: String

        public var code: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var country: String

        public var storeName: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case city

            case pincode

            case orderingStoreId = "ordering_store_id"

            case phone

            case state

            case code

            case meta

            case contactPerson = "contact_person"

            case country

            case storeName = "store_name"

            case address
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.city = city

            self.pincode = pincode

            self.orderingStoreId = orderingStoreId

            self.phone = phone

            self.state = state

            self.code = code

            self.meta = meta

            self.contactPerson = contactPerson

            self.country = country

            self.storeName = storeName

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
