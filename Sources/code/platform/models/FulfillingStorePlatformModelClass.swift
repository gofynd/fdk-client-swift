

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Orders
     */

    class FulfillingStore: Codable {
        public var storeName: String

        public var country: String

        public var code: String

        public var address: String

        public var city: String

        public var id: String

        public var state: String

        public var pincode: String

        public var fulfillmentChannel: String

        public var contactPerson: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case country

            case code

            case address

            case city

            case id

            case state

            case pincode

            case fulfillmentChannel = "fulfillment_channel"

            case contactPerson = "contact_person"

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, phone: String, pincode: String, state: String, storeName: String) {
            self.storeName = storeName

            self.country = country

            self.code = code

            self.address = address

            self.city = city

            self.id = id

            self.state = state

            self.pincode = pincode

            self.fulfillmentChannel = fulfillmentChannel

            self.contactPerson = contactPerson

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeName = try container.decode(String.self, forKey: .storeName)

            country = try container.decode(String.self, forKey: .country)

            code = try container.decode(String.self, forKey: .code)

            address = try container.decode(String.self, forKey: .address)

            city = try container.decode(String.self, forKey: .city)

            id = try container.decode(String.self, forKey: .id)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
