

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var city: String

        public var state: String

        public var address: String

        public var pincode: String

        public var contactPerson: String

        public var meta: [String: Any]

        public var code: String

        public var phone: String

        public var id: String

        public var fulfillmentChannel: String

        public var storeName: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case city

            case state

            case address

            case pincode

            case contactPerson = "contact_person"

            case meta

            case code

            case phone

            case id

            case fulfillmentChannel = "fulfillment_channel"

            case storeName = "store_name"

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.city = city

            self.state = state

            self.address = address

            self.pincode = pincode

            self.contactPerson = contactPerson

            self.meta = meta

            self.code = code

            self.phone = phone

            self.id = id

            self.fulfillmentChannel = fulfillmentChannel

            self.storeName = storeName

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            meta = try container.decode([String: Any].self, forKey: .meta)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            id = try container.decode(String.self, forKey: .id)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            storeName = try container.decode(String.self, forKey: .storeName)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
