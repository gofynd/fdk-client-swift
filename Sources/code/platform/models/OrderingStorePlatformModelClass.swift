

import Foundation
public extension PlatformClient {
    /*
         Model: OrderingStore
         Used By: Order
     */

    class OrderingStore: Codable {
        public var code: String

        public var phone: String

        public var country: String

        public var id: String

        public var city: String

        public var contactPerson: String

        public var address: String

        public var meta: [String: Any]

        public var state: String

        public var storeName: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case code

            case phone

            case country

            case id

            case city

            case contactPerson = "contact_person"

            case address

            case meta

            case state

            case storeName = "store_name"

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.code = code

            self.phone = phone

            self.country = country

            self.id = id

            self.city = city

            self.contactPerson = contactPerson

            self.address = address

            self.meta = meta

            self.state = state

            self.storeName = storeName

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            id = try container.decode(String.self, forKey: .id)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            address = try container.decode(String.self, forKey: .address)

            meta = try container.decode([String: Any].self, forKey: .meta)

            state = try container.decode(String.self, forKey: .state)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
