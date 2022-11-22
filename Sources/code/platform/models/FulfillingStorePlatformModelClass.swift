

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var state: String

        public var id: String

        public var pincode: String

        public var contactPerson: String

        public var phone: String

        public var city: String

        public var meta: [String: Any]

        public var address: String

        public var fulfillmentChannel: String

        public var storeName: String

        public var code: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case state

            case id

            case pincode

            case contactPerson = "contact_person"

            case phone

            case city

            case meta

            case address

            case fulfillmentChannel = "fulfillment_channel"

            case storeName = "store_name"

            case code

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.state = state

            self.id = id

            self.pincode = pincode

            self.contactPerson = contactPerson

            self.phone = phone

            self.city = city

            self.meta = meta

            self.address = address

            self.fulfillmentChannel = fulfillmentChannel

            self.storeName = storeName

            self.code = code

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            id = try container.decode(String.self, forKey: .id)

            pincode = try container.decode(String.self, forKey: .pincode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            address = try container.decode(String.self, forKey: .address)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            storeName = try container.decode(String.self, forKey: .storeName)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
