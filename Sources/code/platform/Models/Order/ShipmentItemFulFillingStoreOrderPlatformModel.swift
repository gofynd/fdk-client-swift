

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentItemFulFillingStore
         Used By: Order
     */

    class ShipmentItemFulFillingStore: Codable {
        public var meta: [String: Any]?

        public var phone: String?

        public var city: String?

        public var storeEmail: String?

        public var code: String

        public var brandStoreTags: String?

        public var id: Int

        public var address: String?

        public var pincode: String?

        public var locationType: String?

        public var name: String?

        public var state: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case phone

            case city

            case storeEmail = "store_email"

            case code

            case brandStoreTags = "brand_store_tags"

            case id

            case address

            case pincode

            case locationType = "location_type"

            case name

            case state
        }

        public init(address: String? = nil, brandStoreTags: String? = nil, city: String? = nil, code: String, id: Int, locationType: String? = nil, meta: [String: Any]? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil, storeEmail: String? = nil) {
            self.meta = meta

            self.phone = phone

            self.city = city

            self.storeEmail = storeEmail

            self.code = code

            self.brandStoreTags = brandStoreTags

            self.id = id

            self.address = address

            self.pincode = pincode

            self.locationType = locationType

            self.name = name

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeEmail = try container.decode(String.self, forKey: .storeEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            do {
                brandStoreTags = try container.decode(String.self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(String.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                locationType = try container.decode(String.self, forKey: .locationType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentItemFulFillingStore
         Used By: Order
     */

    class ShipmentItemFulFillingStore: Codable {
        public var meta: [String: Any]?

        public var phone: String?

        public var city: String?

        public var storeEmail: String?

        public var code: String

        public var brandStoreTags: String?

        public var id: Int

        public var address: String?

        public var pincode: String?

        public var locationType: String?

        public var name: String?

        public var state: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case phone

            case city

            case storeEmail = "store_email"

            case code

            case brandStoreTags = "brand_store_tags"

            case id

            case address

            case pincode

            case locationType = "location_type"

            case name

            case state
        }

        public init(address: String? = nil, brandStoreTags: String? = nil, city: String? = nil, code: String, id: Int, locationType: String? = nil, meta: [String: Any]? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil, storeEmail: String? = nil) {
            self.meta = meta

            self.phone = phone

            self.city = city

            self.storeEmail = storeEmail

            self.code = code

            self.brandStoreTags = brandStoreTags

            self.id = id

            self.address = address

            self.pincode = pincode

            self.locationType = locationType

            self.name = name

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeEmail = try container.decode(String.self, forKey: .storeEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            code = try container.decode(String.self, forKey: .code)

            do {
                brandStoreTags = try container.decode(String.self, forKey: .brandStoreTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(String.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                locationType = try container.decode(String.self, forKey: .locationType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encode(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
