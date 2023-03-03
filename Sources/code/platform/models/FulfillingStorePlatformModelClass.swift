

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var country: String

        public var storeName: String

        public var fulfillmentChannel: String

        public var meta: [String: Any]

        public var state: String

        public var phone: String

        public var city: String

        public var pincode: String

        public var address: String

        public var id: String

        public var code: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case country

            case storeName = "store_name"

            case fulfillmentChannel = "fulfillment_channel"

            case meta

            case state

            case phone

            case city

            case pincode

            case address

            case id

            case code

            case contactPerson = "contact_person"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.country = country

            self.storeName = storeName

            self.fulfillmentChannel = fulfillmentChannel

            self.meta = meta

            self.state = state

            self.phone = phone

            self.city = city

            self.pincode = pincode

            self.address = address

            self.id = id

            self.code = code

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            meta = try container.decode([String: Any].self, forKey: .meta)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            address = try container.decode(String.self, forKey: .address)

            id = try container.decode(String.self, forKey: .id)

            code = try container.decode(String.self, forKey: .code)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
