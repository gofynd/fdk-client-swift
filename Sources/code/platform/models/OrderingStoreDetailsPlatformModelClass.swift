

import Foundation
public extension PlatformClient {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var address: String

        public var storeName: String

        public var contactPerson: String

        public var id: String

        public var pincode: String

        public var country: String

        public var state: String

        public var code: String

        public var phone: String

        public var meta: [String: Any]

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case address

            case storeName = "store_name"

            case contactPerson = "contact_person"

            case id

            case pincode

            case country

            case state

            case code

            case phone

            case meta

            case city
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.storeName = storeName

            self.contactPerson = contactPerson

            self.id = id

            self.pincode = pincode

            self.country = country

            self.state = state

            self.code = code

            self.phone = phone

            self.meta = meta

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            id = try container.decode(String.self, forKey: .id)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
