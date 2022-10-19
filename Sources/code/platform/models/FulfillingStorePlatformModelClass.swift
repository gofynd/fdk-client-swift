

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Orders
     */

    class FulfillingStore: Codable {
        public var meta: [String: Any]

        public var phone: String

        public var address: String

        public var storeName: String

        public var contactPerson: String

        public var city: String

        public var pincode: String

        public var country: String

        public var state: String

        public var code: String

        public var id: String

        public var fulfillmentChannel: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case phone

            case address

            case storeName = "store_name"

            case contactPerson = "contact_person"

            case city

            case pincode

            case country

            case state

            case code

            case id

            case fulfillmentChannel = "fulfillment_channel"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.phone = phone

            self.address = address

            self.storeName = storeName

            self.contactPerson = contactPerson

            self.city = city

            self.pincode = pincode

            self.country = country

            self.state = state

            self.code = code

            self.id = id

            self.fulfillmentChannel = fulfillmentChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            phone = try container.decode(String.self, forKey: .phone)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            id = try container.decode(String.self, forKey: .id)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
        }
    }
}
