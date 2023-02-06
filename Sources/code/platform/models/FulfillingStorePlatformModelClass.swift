

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var state: String

        public var code: String

        public var fulfillmentChannel: String

        public var city: String

        public var meta: [String: Any]

        public var country: String

        public var address: String

        public var contactPerson: String

        public var storeName: String

        public var pincode: String

        public var id: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case state

            case code

            case fulfillmentChannel = "fulfillment_channel"

            case city

            case meta

            case country

            case address

            case contactPerson = "contact_person"

            case storeName = "store_name"

            case pincode

            case id

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.state = state

            self.code = code

            self.fulfillmentChannel = fulfillmentChannel

            self.city = city

            self.meta = meta

            self.country = country

            self.address = address

            self.contactPerson = contactPerson

            self.storeName = storeName

            self.pincode = pincode

            self.id = id

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            country = try container.decode(String.self, forKey: .country)

            address = try container.decode(String.self, forKey: .address)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            id = try container.decode(String.self, forKey: .id)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
