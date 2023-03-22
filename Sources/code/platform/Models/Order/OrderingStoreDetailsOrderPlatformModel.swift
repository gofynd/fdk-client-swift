

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var meta: [String: Any]

        public var address: String

        public var storeName: String

        public var country: String

        public var city: String

        public var code: String

        public var phone: String

        public var contactPerson: String

        public var pincode: String

        public var state: String

        public var orderingStoreId: Int

        public enum CodingKeys: String, CodingKey {
            case meta

            case address

            case storeName = "store_name"

            case country

            case city

            case code

            case phone

            case contactPerson = "contact_person"

            case pincode

            case state

            case orderingStoreId = "ordering_store_id"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.address = address

            self.storeName = storeName

            self.country = country

            self.city = city

            self.code = code

            self.phone = phone

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.state = state

            self.orderingStoreId = orderingStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var meta: [String: Any]

        public var address: String

        public var storeName: String

        public var country: String

        public var city: String

        public var code: String

        public var phone: String

        public var contactPerson: String

        public var pincode: String

        public var state: String

        public var orderingStoreId: Int

        public enum CodingKeys: String, CodingKey {
            case meta

            case address

            case storeName = "store_name"

            case country

            case city

            case code

            case phone

            case contactPerson = "contact_person"

            case pincode

            case state

            case orderingStoreId = "ordering_store_id"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.address = address

            self.storeName = storeName

            self.country = country

            self.city = city

            self.code = code

            self.phone = phone

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.state = state

            self.orderingStoreId = orderingStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)
        }
    }
}
