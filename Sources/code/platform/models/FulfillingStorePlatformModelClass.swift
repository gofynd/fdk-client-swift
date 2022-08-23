

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Orders
     */

    class FulfillingStore: Codable {
        public var city: String

        public var pincode: String

        public var fulfillmentChannel: String

        public var address: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var country: String

        public var phone: String

        public var state: String

        public var code: String

        public var id: String

        public var storeName: String

        public enum CodingKeys: String, CodingKey {
            case city

            case pincode

            case fulfillmentChannel = "fulfillment_channel"

            case address

            case meta

            case contactPerson = "contact_person"

            case country

            case phone

            case state

            case code

            case id

            case storeName = "store_name"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.city = city

            self.pincode = pincode

            self.fulfillmentChannel = fulfillmentChannel

            self.address = address

            self.meta = meta

            self.contactPerson = contactPerson

            self.country = country

            self.phone = phone

            self.state = state

            self.code = code

            self.id = id

            self.storeName = storeName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            id = try container.decode(String.self, forKey: .id)

            storeName = try container.decode(String.self, forKey: .storeName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeName, forKey: .storeName)
        }
    }
}
