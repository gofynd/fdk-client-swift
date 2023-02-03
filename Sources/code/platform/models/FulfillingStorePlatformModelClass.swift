

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var code: String

        public var city: String

        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var state: String

        public var storeName: String

        public var contactPerson: String

        public var pincode: String

        public var phone: String

        public var id: String

        public var address: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case code

            case city

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case state

            case storeName = "store_name"

            case contactPerson = "contact_person"

            case pincode

            case phone

            case id

            case address

            case country
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.code = code

            self.city = city

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.state = state

            self.storeName = storeName

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.phone = phone

            self.id = id

            self.address = address

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            state = try container.decode(String.self, forKey: .state)

            storeName = try container.decode(String.self, forKey: .storeName)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            id = try container.decode(String.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
