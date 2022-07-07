

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Orders
     */

    class FulfillingStore: Codable {
        public var fulfillmentChannel: String

        public var state: String

        public var phone: String

        public var id: String

        public var contactPerson: String

        public var address: String

        public var country: String

        public var storeName: String

        public var pincode: String

        public var city: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case fulfillmentChannel = "fulfillment_channel"

            case state

            case phone

            case id

            case contactPerson = "contact_person"

            case address

            case country

            case storeName = "store_name"

            case pincode

            case city

            case code
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, phone: String, pincode: String, state: String, storeName: String) {
            self.fulfillmentChannel = fulfillmentChannel

            self.state = state

            self.phone = phone

            self.id = id

            self.contactPerson = contactPerson

            self.address = address

            self.country = country

            self.storeName = storeName

            self.pincode = pincode

            self.city = city

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(String.self, forKey: .phone)

            id = try container.decode(String.self, forKey: .id)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            address = try container.decode(String.self, forKey: .address)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
