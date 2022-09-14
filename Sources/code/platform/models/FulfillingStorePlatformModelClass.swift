

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Orders
     */

    class FulfillingStore: Codable {
        public var meta: [String: Any]

        public var storeName: String

        public var city: String

        public var id: String

        public var code: String

        public var fulfillmentChannel: String

        public var country: String

        public var pincode: String

        public var state: String

        public var phone: String

        public var address: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case storeName = "store_name"

            case city

            case id

            case code

            case fulfillmentChannel = "fulfillment_channel"

            case country

            case pincode

            case state

            case phone

            case address

            case contactPerson = "contact_person"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.storeName = storeName

            self.city = city

            self.id = id

            self.code = code

            self.fulfillmentChannel = fulfillmentChannel

            self.country = country

            self.pincode = pincode

            self.state = state

            self.phone = phone

            self.address = address

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            storeName = try container.decode(String.self, forKey: .storeName)

            city = try container.decode(String.self, forKey: .city)

            id = try container.decode(String.self, forKey: .id)

            code = try container.decode(String.self, forKey: .code)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(String.self, forKey: .phone)

            address = try container.decode(String.self, forKey: .address)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
