

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var code: String

        public var state: String

        public var address: String

        public var pincode: String

        public var storeName: String

        public var contactPerson: String

        public var phone: String

        public var meta: [String: Any]

        public var city: String

        public var id: Int

        public var country: String

        public var fulfillmentChannel: String

        public enum CodingKeys: String, CodingKey {
            case code

            case state

            case address

            case pincode

            case storeName = "store_name"

            case contactPerson = "contact_person"

            case phone

            case meta

            case city

            case id

            case country

            case fulfillmentChannel = "fulfillment_channel"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.code = code

            self.state = state

            self.address = address

            self.pincode = pincode

            self.storeName = storeName

            self.contactPerson = contactPerson

            self.phone = phone

            self.meta = meta

            self.city = city

            self.id = id

            self.country = country

            self.fulfillmentChannel = fulfillmentChannel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            code = try container.decode(String.self, forKey: .code)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            storeName = try container.decode(String.self, forKey: .storeName)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            id = try container.decode(Int.self, forKey: .id)

            country = try container.decode(String.self, forKey: .country)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)
        }
    }
}
