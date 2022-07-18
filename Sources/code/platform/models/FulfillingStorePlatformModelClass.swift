

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Orders
     */

    class FulfillingStore: Codable {
        public var address: String

        public var code: String

        public var country: String

        public var phone: String

        public var contactPerson: String

        public var state: String

        public var pincode: String

        public var storeName: String

        public var city: String

        public var id: String

        public var fulfillmentChannel: String

        public var meta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case address

            case code

            case country

            case phone

            case contactPerson = "contact_person"

            case state

            case pincode

            case storeName = "store_name"

            case city

            case id

            case fulfillmentChannel = "fulfillment_channel"

            case meta
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.code = code

            self.country = country

            self.phone = phone

            self.contactPerson = contactPerson

            self.state = state

            self.pincode = pincode

            self.storeName = storeName

            self.city = city

            self.id = id

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            storeName = try container.decode(String.self, forKey: .storeName)

            city = try container.decode(String.self, forKey: .city)

            id = try container.decode(String.self, forKey: .id)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode([String: Any].self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
