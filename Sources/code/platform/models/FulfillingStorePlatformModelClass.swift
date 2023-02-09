

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var code: String

        public var phone: String

        public var contactPerson: String

        public var fulfillmentChannel: String

        public var address: String

        public var state: String

        public var pincode: String

        public var id: String

        public var city: String

        public var country: String

        public var meta: [String: Any]

        public var storeName: String

        public enum CodingKeys: String, CodingKey {
            case code

            case phone

            case contactPerson = "contact_person"

            case fulfillmentChannel = "fulfillment_channel"

            case address

            case state

            case pincode

            case id

            case city

            case country

            case meta

            case storeName = "store_name"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.code = code

            self.phone = phone

            self.contactPerson = contactPerson

            self.fulfillmentChannel = fulfillmentChannel

            self.address = address

            self.state = state

            self.pincode = pincode

            self.id = id

            self.city = city

            self.country = country

            self.meta = meta

            self.storeName = storeName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            id = try container.decode(String.self, forKey: .id)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            meta = try container.decode([String: Any].self, forKey: .meta)

            storeName = try container.decode(String.self, forKey: .storeName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeName, forKey: .storeName)
        }
    }
}
