

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var phone: String

        public var contactPerson: String

        public var pincode: String

        public var city: String

        public var country: String

        public var meta: [String: Any]

        public var storeName: String

        public var id: String

        public var state: String

        public var code: String

        public var address: String

        public var fulfillmentChannel: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case contactPerson = "contact_person"

            case pincode

            case city

            case country

            case meta

            case storeName = "store_name"

            case id

            case state

            case code

            case address

            case fulfillmentChannel = "fulfillment_channel"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.phone = phone

            self.contactPerson = contactPerson

            self.pincode = pincode

            self.city = city

            self.country = country

            self.meta = meta

            self.storeName = storeName

            self.id = id

            self.state = state

            self.code = code

            self.address = address

            self.fulfillmentChannel = fulfillmentChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            meta = try container.decode([String: Any].self, forKey: .meta)

            storeName = try container.decode(String.self, forKey: .storeName)

            id = try container.decode(String.self, forKey: .id)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
        }
    }
}
