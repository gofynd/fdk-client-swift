

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Orders
     */

    class FulfillingStore: Codable {
        public var contactPerson: String

        public var address: String

        public var country: String

        public var pincode: String

        public var city: String

        public var fulfillmentChannel: String

        public var storeName: String

        public var meta: [String: Any]

        public var phone: String

        public var code: String

        public var state: String

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case contactPerson = "contact_person"

            case address

            case country

            case pincode

            case city

            case fulfillmentChannel = "fulfillment_channel"

            case storeName = "store_name"

            case meta

            case phone

            case code

            case state

            case id
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.contactPerson = contactPerson

            self.address = address

            self.country = country

            self.pincode = pincode

            self.city = city

            self.fulfillmentChannel = fulfillmentChannel

            self.storeName = storeName

            self.meta = meta

            self.phone = phone

            self.code = code

            self.state = state

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            address = try container.decode(String.self, forKey: .address)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            storeName = try container.decode(String.self, forKey: .storeName)

            meta = try container.decode([String: Any].self, forKey: .meta)

            phone = try container.decode(String.self, forKey: .phone)

            code = try container.decode(String.self, forKey: .code)

            state = try container.decode(String.self, forKey: .state)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
