

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var address: String

        public var city: String

        public var fulfillmentChannel: String

        public var storeName: String

        public var phone: String

        public var state: String

        public var code: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var id: String

        public var pincode: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case address

            case city

            case fulfillmentChannel = "fulfillment_channel"

            case storeName = "store_name"

            case phone

            case state

            case code

            case meta

            case contactPerson = "contact_person"

            case id

            case pincode

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.city = city

            self.fulfillmentChannel = fulfillmentChannel

            self.storeName = storeName

            self.phone = phone

            self.state = state

            self.code = code

            self.meta = meta

            self.contactPerson = contactPerson

            self.id = id

            self.pincode = pincode

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            city = try container.decode(String.self, forKey: .city)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            id = try container.decode(String.self, forKey: .id)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
