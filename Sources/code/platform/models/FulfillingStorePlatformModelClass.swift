

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Orders
     */

    class FulfillingStore: Codable {
        public var pincode: String

        public var city: String

        public var phone: String

        public var storeName: String

        public var meta: [String: Any]

        public var country: String

        public var id: String

        public var fulfillmentChannel: String

        public var contactPerson: String

        public var state: String

        public var code: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case city

            case phone

            case storeName = "store_name"

            case meta

            case country

            case id

            case fulfillmentChannel = "fulfillment_channel"

            case contactPerson = "contact_person"

            case state

            case code

            case address
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.pincode = pincode

            self.city = city

            self.phone = phone

            self.storeName = storeName

            self.meta = meta

            self.country = country

            self.id = id

            self.fulfillmentChannel = fulfillmentChannel

            self.contactPerson = contactPerson

            self.state = state

            self.code = code

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            storeName = try container.decode(String.self, forKey: .storeName)

            meta = try container.decode([String: Any].self, forKey: .meta)

            country = try container.decode(String.self, forKey: .country)

            id = try container.decode(String.self, forKey: .id)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
