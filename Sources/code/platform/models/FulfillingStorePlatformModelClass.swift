

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Orders
     */

    class FulfillingStore: Codable {
        public var id: String

        public var contactPerson: String

        public var code: String

        public var pincode: String

        public var fulfillmentChannel: String

        public var country: String

        public var phone: String

        public var city: String

        public var storeName: String

        public var meta: [String: Any]

        public var address: String

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case id

            case contactPerson = "contact_person"

            case code

            case pincode

            case fulfillmentChannel = "fulfillment_channel"

            case country

            case phone

            case city

            case storeName = "store_name"

            case meta

            case address

            case state
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.id = id

            self.contactPerson = contactPerson

            self.code = code

            self.pincode = pincode

            self.fulfillmentChannel = fulfillmentChannel

            self.country = country

            self.phone = phone

            self.city = city

            self.storeName = storeName

            self.meta = meta

            self.address = address

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            pincode = try container.decode(String.self, forKey: .pincode)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            storeName = try container.decode(String.self, forKey: .storeName)

            meta = try container.decode([String: Any].self, forKey: .meta)

            address = try container.decode(String.self, forKey: .address)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
