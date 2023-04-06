

import Foundation
public extension PlatformClient {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var storeName: String

        public var meta: [String: Any]

        public var code: String

        public var city: String

        public var state: String

        public var address: String

        public var orderingStoreId: Int

        public var country: String

        public var contactPerson: String

        public var phone: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case meta

            case code

            case city

            case state

            case address

            case orderingStoreId = "ordering_store_id"

            case country

            case contactPerson = "contact_person"

            case phone

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, meta: [String: Any], orderingStoreId: Int, phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.meta = meta

            self.code = code

            self.city = city

            self.state = state

            self.address = address

            self.orderingStoreId = orderingStoreId

            self.country = country

            self.contactPerson = contactPerson

            self.phone = phone

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            meta = try container.decode([String: Any].self, forKey: .meta)

            code = try container.decode(String.self, forKey: .code)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            orderingStoreId = try container.decode(Int.self, forKey: .orderingStoreId)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(orderingStoreId, forKey: .orderingStoreId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
