

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var storeName: String?

        public var address: String?

        public var state: String

        public var country: String

        public var city: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var code: String

        public var phone: String

        public var id: Int

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case address

            case state

            case country

            case city

            case meta

            case contactPerson = "contact_person"

            case code

            case phone

            case id

            case pincode
        }

        public init(address: String? = nil, city: String, code: String, contactPerson: String, country: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String? = nil) {
            self.storeName = storeName

            self.address = address

            self.state = state

            self.country = country

            self.city = city

            self.meta = meta

            self.contactPerson = contactPerson

            self.code = code

            self.phone = phone

            self.id = id

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            id = try container.decode(Int.self, forKey: .id)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderingStoreDetails
         Used By: Order
     */

    class OrderingStoreDetails: Codable {
        public var storeName: String?

        public var address: String?

        public var state: String

        public var country: String

        public var city: String

        public var meta: [String: Any]

        public var contactPerson: String

        public var code: String

        public var phone: String

        public var id: Int

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case storeName = "store_name"

            case address

            case state

            case country

            case city

            case meta

            case contactPerson = "contact_person"

            case code

            case phone

            case id

            case pincode
        }

        public init(address: String? = nil, city: String, code: String, contactPerson: String, country: String, id: Int, meta: [String: Any], phone: String, pincode: String, state: String, storeName: String? = nil) {
            self.storeName = storeName

            self.address = address

            self.state = state

            self.country = country

            self.city = city

            self.meta = meta

            self.contactPerson = contactPerson

            self.code = code

            self.phone = phone

            self.id = id

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                storeName = try container.decode(String.self, forKey: .storeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            meta = try container.decode([String: Any].self, forKey: .meta)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            code = try container.decode(String.self, forKey: .code)

            phone = try container.decode(String.self, forKey: .phone)

            id = try container.decode(Int.self, forKey: .id)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeName, forKey: .storeName)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
