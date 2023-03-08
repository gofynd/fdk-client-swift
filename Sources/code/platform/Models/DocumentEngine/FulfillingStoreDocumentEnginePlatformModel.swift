

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: FulfillingStore
         Used By: DocumentEngine
     */

    class FulfillingStore: Codable {
        public var meta: [String: Any]

        public var city: String

        public var country: String

        public var id: Int

        public var fulfillmentChannel: String

        public var state: String

        public var address: String

        public var code: String

        public var contactPerson: String

        public var fulfillmentType: String?

        public var pincode: String

        public var storeName: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case city

            case country

            case id

            case fulfillmentChannel = "fulfillment_channel"

            case state

            case address

            case code

            case contactPerson = "contact_person"

            case fulfillmentType = "fulfillment_type"

            case pincode

            case storeName = "store_name"

            case phone
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, fulfillmentType: String? = nil, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.city = city

            self.country = country

            self.id = id

            self.fulfillmentChannel = fulfillmentChannel

            self.state = state

            self.address = address

            self.code = code

            self.contactPerson = contactPerson

            self.fulfillmentType = fulfillmentType

            self.pincode = pincode

            self.storeName = storeName

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            id = try container.decode(Int.self, forKey: .id)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            code = try container.decode(String.self, forKey: .code)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            storeName = try container.decode(String.self, forKey: .storeName)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
