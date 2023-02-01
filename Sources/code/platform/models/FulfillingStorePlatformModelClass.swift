

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var id: String

        public var country: String

        public var city: String

        public var pincode: String

        public var contactPerson: String

        public var address: String

        public var state: String

        public var meta: [String: Any]

        public var fulfillmentChannel: String

        public var code: String

        public var storeName: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case id

            case country

            case city

            case pincode

            case contactPerson = "contact_person"

            case address

            case state

            case meta

            case fulfillmentChannel = "fulfillment_channel"

            case code

            case storeName = "store_name"

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.id = id

            self.country = country

            self.city = city

            self.pincode = pincode

            self.contactPerson = contactPerson

            self.address = address

            self.state = state

            self.meta = meta

            self.fulfillmentChannel = fulfillmentChannel

            self.code = code

            self.storeName = storeName

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            address = try container.decode(String.self, forKey: .address)

            state = try container.decode(String.self, forKey: .state)

            meta = try container.decode([String: Any].self, forKey: .meta)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            code = try container.decode(String.self, forKey: .code)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
