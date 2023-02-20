

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var address: String

        public var city: String

        public var country: String

        public var phone: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var id: String

        public var state: String

        public var storeName: String

        public var fulfillmentChannel: String

        public var pincode: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case address

            case city

            case country

            case phone

            case meta

            case contactPerson = "contact_person"

            case id

            case state

            case storeName = "store_name"

            case fulfillmentChannel = "fulfillment_channel"

            case pincode

            case code
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.city = city

            self.country = country

            self.phone = phone

            self.meta = meta

            self.contactPerson = contactPerson

            self.id = id

            self.state = state

            self.storeName = storeName

            self.fulfillmentChannel = fulfillmentChannel

            self.pincode = pincode

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            id = try container.decode(String.self, forKey: .id)

            state = try container.decode(String.self, forKey: .state)

            storeName = try container.decode(String.self, forKey: .storeName)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            pincode = try container.decode(String.self, forKey: .pincode)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
