

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var id: Int

        public var storeName: String

        public var address: String

        public var fulfillmentType: String?

        public var fulfillmentChannel: String

        public var phone: String

        public var meta: [String: Any]

        public var code: String

        public var country: String

        public var state: String

        public var pincode: String

        public var city: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case id

            case storeName = "store_name"

            case address

            case fulfillmentType = "fulfillment_type"

            case fulfillmentChannel = "fulfillment_channel"

            case phone

            case meta

            case code

            case country

            case state

            case pincode

            case city

            case contactPerson = "contact_person"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, fulfillmentType: String? = nil, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.id = id

            self.storeName = storeName

            self.address = address

            self.fulfillmentType = fulfillmentType

            self.fulfillmentChannel = fulfillmentChannel

            self.phone = phone

            self.meta = meta

            self.code = code

            self.country = country

            self.state = state

            self.pincode = pincode

            self.city = city

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            storeName = try container.decode(String.self, forKey: .storeName)

            address = try container.decode(String.self, forKey: .address)

            do {
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var id: Int

        public var storeName: String

        public var address: String

        public var fulfillmentType: String?

        public var fulfillmentChannel: String

        public var phone: String

        public var meta: [String: Any]

        public var code: String

        public var country: String

        public var state: String

        public var pincode: String

        public var city: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case id

            case storeName = "store_name"

            case address

            case fulfillmentType = "fulfillment_type"

            case fulfillmentChannel = "fulfillment_channel"

            case phone

            case meta

            case code

            case country

            case state

            case pincode

            case city

            case contactPerson = "contact_person"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, fulfillmentType: String? = nil, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.id = id

            self.storeName = storeName

            self.address = address

            self.fulfillmentType = fulfillmentType

            self.fulfillmentChannel = fulfillmentChannel

            self.phone = phone

            self.meta = meta

            self.code = code

            self.country = country

            self.state = state

            self.pincode = pincode

            self.city = city

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(Int.self, forKey: .id)

            storeName = try container.decode(String.self, forKey: .storeName)

            address = try container.decode(String.self, forKey: .address)

            do {
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            phone = try container.decode(String.self, forKey: .phone)

            meta = try container.decode([String: Any].self, forKey: .meta)

            code = try container.decode(String.self, forKey: .code)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
