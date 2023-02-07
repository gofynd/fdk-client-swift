

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var pincode: String

        public var fulfillmentChannel: String

        public var id: String

        public var phone: String

        public var contactPerson: String

        public var state: String

        public var city: String

        public var address: String

        public var code: String

        public var storeName: String

        public var country: String

        public var meta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case pincode

            case fulfillmentChannel = "fulfillment_channel"

            case id

            case phone

            case contactPerson = "contact_person"

            case state

            case city

            case address

            case code

            case storeName = "store_name"

            case country

            case meta
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.pincode = pincode

            self.fulfillmentChannel = fulfillmentChannel

            self.id = id

            self.phone = phone

            self.contactPerson = contactPerson

            self.state = state

            self.city = city

            self.address = address

            self.code = code

            self.storeName = storeName

            self.country = country

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            id = try container.decode(String.self, forKey: .id)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)

            code = try container.decode(String.self, forKey: .code)

            storeName = try container.decode(String.self, forKey: .storeName)

            country = try container.decode(String.self, forKey: .country)

            meta = try container.decode([String: Any].self, forKey: .meta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
