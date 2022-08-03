

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Orders
     */

    class FulfillingStore: Codable {
        public var city: String

        public var country: String

        public var meta: [String: Any]

        public var storeName: String

        public var pincode: String

        public var phone: String

        public var address: String

        public var fulfillmentChannel: String

        public var state: String

        public var id: String

        public var contactPerson: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case city

            case country

            case meta

            case storeName = "store_name"

            case pincode

            case phone

            case address

            case fulfillmentChannel = "fulfillment_channel"

            case state

            case id

            case contactPerson = "contact_person"

            case code
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.city = city

            self.country = country

            self.meta = meta

            self.storeName = storeName

            self.pincode = pincode

            self.phone = phone

            self.address = address

            self.fulfillmentChannel = fulfillmentChannel

            self.state = state

            self.id = id

            self.contactPerson = contactPerson

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            meta = try container.decode([String: Any].self, forKey: .meta)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            address = try container.decode(String.self, forKey: .address)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            state = try container.decode(String.self, forKey: .state)

            id = try container.decode(String.self, forKey: .id)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
