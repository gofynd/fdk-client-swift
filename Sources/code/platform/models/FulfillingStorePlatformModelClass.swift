

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var meta: [String: Any]

        public var state: String

        public var id: String

        public var city: String

        public var contactPerson: String

        public var address: String

        public var country: String

        public var pincode: String

        public var fulfillmentChannel: String

        public var code: String

        public var storeName: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case state

            case id

            case city

            case contactPerson = "contact_person"

            case address

            case country

            case pincode

            case fulfillmentChannel = "fulfillment_channel"

            case code

            case storeName = "store_name"

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.state = state

            self.id = id

            self.city = city

            self.contactPerson = contactPerson

            self.address = address

            self.country = country

            self.pincode = pincode

            self.fulfillmentChannel = fulfillmentChannel

            self.code = code

            self.storeName = storeName

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            state = try container.decode(String.self, forKey: .state)

            id = try container.decode(String.self, forKey: .id)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            address = try container.decode(String.self, forKey: .address)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            code = try container.decode(String.self, forKey: .code)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
