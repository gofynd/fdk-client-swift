

import Foundation
public extension PlatformClient {
    /*
         Model: OrderingStore
         Used By: Order
     */

    class OrderingStore: Codable {
        public var city: String

        public var storeName: String

        public var address: String

        public var country: String

        public var phone: String

        public var pincode: String

        public var code: String

        public var id: String

        public var state: String

        public var meta: [String: Any]

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case city

            case storeName = "store_name"

            case address

            case country

            case phone

            case pincode

            case code

            case id

            case state

            case meta

            case contactPerson = "contact_person"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.city = city

            self.storeName = storeName

            self.address = address

            self.country = country

            self.phone = phone

            self.pincode = pincode

            self.code = code

            self.id = id

            self.state = state

            self.meta = meta

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            storeName = try container.decode(String.self, forKey: .storeName)

            address = try container.decode(String.self, forKey: .address)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            code = try container.decode(String.self, forKey: .code)

            id = try container.decode(String.self, forKey: .id)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
