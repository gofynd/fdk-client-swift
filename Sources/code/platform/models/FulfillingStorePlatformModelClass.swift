

import Foundation
public extension PlatformClient {
    /*
         Model: FulfillingStore
         Used By: Orders
     */

    class FulfillingStore: Codable {
        public var address: String

        public var storeName: String

        public var city: String

        public var phone: String

        public var contactPerson: String

        public var code: String

        public var id: String

        public var state: String

        public var fulfillmentChannel: String

        public var country: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case address

            case storeName = "store_name"

            case city

            case phone

            case contactPerson = "contact_person"

            case code

            case id

            case state

            case fulfillmentChannel = "fulfillment_channel"

            case country

            case pincode
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, id: String, phone: String, pincode: String, state: String, storeName: String) {
            self.address = address

            self.storeName = storeName

            self.city = city

            self.phone = phone

            self.contactPerson = contactPerson

            self.code = code

            self.id = id

            self.state = state

            self.fulfillmentChannel = fulfillmentChannel

            self.country = country

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            id = try container.decode(String.self, forKey: .id)

            state = try container.decode(String.self, forKey: .state)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
