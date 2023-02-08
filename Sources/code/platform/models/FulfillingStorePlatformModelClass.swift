

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var meta: [String: Any]

        public var id: String

        public var storeName: String

        public var state: String

        public var country: String

        public var address: String

        public var pincode: String

        public var city: String

        public var fulfillmentChannel: String

        public var code: String

        public var contactPerson: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case id

            case storeName = "store_name"

            case state

            case country

            case address

            case pincode

            case city

            case fulfillmentChannel = "fulfillment_channel"

            case code

            case contactPerson = "contact_person"

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.id = id

            self.storeName = storeName

            self.state = state

            self.country = country

            self.address = address

            self.pincode = pincode

            self.city = city

            self.fulfillmentChannel = fulfillmentChannel

            self.code = code

            self.contactPerson = contactPerson

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            id = try container.decode(String.self, forKey: .id)

            storeName = try container.decode(String.self, forKey: .storeName)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            code = try container.decode(String.self, forKey: .code)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
