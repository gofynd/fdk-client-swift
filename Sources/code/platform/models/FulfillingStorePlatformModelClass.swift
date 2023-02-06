

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var contactPerson: String

        public var code: String

        public var id: String

        public var state: String

        public var pincode: String

        public var country: String

        public var address: String

        public var phone: String

        public var city: String

        public var meta: [String: Any]

        public var storeName: String

        public var fulfillmentChannel: String

        public enum CodingKeys: String, CodingKey {
            case contactPerson = "contact_person"

            case code

            case id

            case state

            case pincode

            case country

            case address

            case phone

            case city

            case meta

            case storeName = "store_name"

            case fulfillmentChannel = "fulfillment_channel"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.contactPerson = contactPerson

            self.code = code

            self.id = id

            self.state = state

            self.pincode = pincode

            self.country = country

            self.address = address

            self.phone = phone

            self.city = city

            self.meta = meta

            self.storeName = storeName

            self.fulfillmentChannel = fulfillmentChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            id = try container.decode(String.self, forKey: .id)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            address = try container.decode(String.self, forKey: .address)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            storeName = try container.decode(String.self, forKey: .storeName)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
        }
    }
}
