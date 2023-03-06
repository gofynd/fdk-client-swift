

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var meta: [String: Any]

        public var city: String

        public var country: String

        public var storeName: String

        public var code: String

        public var phone: String

        public var state: String

        public var pincode: String

        public var fulfillmentType: String?

        public var id: Int

        public var address: String

        public var fulfillmentChannel: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case city

            case country

            case storeName = "store_name"

            case code

            case phone

            case state

            case pincode

            case fulfillmentType = "fulfillment_type"

            case id

            case address

            case fulfillmentChannel = "fulfillment_channel"

            case contactPerson = "contact_person"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, fulfillmentType: String? = nil, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.city = city

            self.country = country

            self.storeName = storeName

            self.code = code

            self.phone = phone

            self.state = state

            self.pincode = pincode

            self.fulfillmentType = fulfillmentType

            self.id = id

            self.address = address

            self.fulfillmentChannel = fulfillmentChannel

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

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
        public var meta: [String: Any]

        public var city: String

        public var country: String

        public var storeName: String

        public var code: String

        public var phone: String

        public var state: String

        public var pincode: String

        public var fulfillmentType: String?

        public var id: Int

        public var address: String

        public var fulfillmentChannel: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case meta

            case city

            case country

            case storeName = "store_name"

            case code

            case phone

            case state

            case pincode

            case fulfillmentType = "fulfillment_type"

            case id

            case address

            case fulfillmentChannel = "fulfillment_channel"

            case contactPerson = "contact_person"
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, fulfillmentType: String? = nil, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.meta = meta

            self.city = city

            self.country = country

            self.storeName = storeName

            self.code = code

            self.phone = phone

            self.state = state

            self.pincode = pincode

            self.fulfillmentType = fulfillmentType

            self.id = id

            self.address = address

            self.fulfillmentChannel = fulfillmentChannel

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            meta = try container.decode([String: Any].self, forKey: .meta)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            storeName = try container.decode(String.self, forKey: .storeName)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            address = try container.decode(String.self, forKey: .address)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
