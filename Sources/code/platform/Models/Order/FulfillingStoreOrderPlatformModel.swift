

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var fulfillmentChannel: String

        public var address: String

        public var storeName: String

        public var pincode: String

        public var country: String

        public var state: String

        public var code: String

        public var city: String

        public var meta: [String: Any]

        public var phone: String

        public var fulfillmentType: String?

        public var contactPerson: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case fulfillmentChannel = "fulfillment_channel"

            case address

            case storeName = "store_name"

            case pincode

            case country

            case state

            case code

            case city

            case meta

            case phone

            case fulfillmentType = "fulfillment_type"

            case contactPerson = "contact_person"

            case id
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, fulfillmentType: String? = nil, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.fulfillmentChannel = fulfillmentChannel

            self.address = address

            self.storeName = storeName

            self.pincode = pincode

            self.country = country

            self.state = state

            self.code = code

            self.city = city

            self.meta = meta

            self.phone = phone

            self.fulfillmentType = fulfillmentType

            self.contactPerson = contactPerson

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FulfillingStore
         Used By: Order
     */

    class FulfillingStore: Codable {
        public var fulfillmentChannel: String

        public var address: String

        public var storeName: String

        public var pincode: String

        public var country: String

        public var state: String

        public var code: String

        public var city: String

        public var meta: [String: Any]

        public var phone: String

        public var fulfillmentType: String?

        public var contactPerson: String

        public var id: Int

        public enum CodingKeys: String, CodingKey {
            case fulfillmentChannel = "fulfillment_channel"

            case address

            case storeName = "store_name"

            case pincode

            case country

            case state

            case code

            case city

            case meta

            case phone

            case fulfillmentType = "fulfillment_type"

            case contactPerson = "contact_person"

            case id
        }

        public init(address: String, city: String, code: String, contactPerson: String, country: String, fulfillmentChannel: String, fulfillmentType: String? = nil, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String) {
            self.fulfillmentChannel = fulfillmentChannel

            self.address = address

            self.storeName = storeName

            self.pincode = pincode

            self.country = country

            self.state = state

            self.code = code

            self.city = city

            self.meta = meta

            self.phone = phone

            self.fulfillmentType = fulfillmentType

            self.contactPerson = contactPerson

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fulfillmentChannel = try container.decode(String.self, forKey: .fulfillmentChannel)

            address = try container.decode(String.self, forKey: .address)

            storeName = try container.decode(String.self, forKey: .storeName)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            code = try container.decode(String.self, forKey: .code)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            id = try container.decode(Int.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fulfillmentChannel, forKey: .fulfillmentChannel)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
