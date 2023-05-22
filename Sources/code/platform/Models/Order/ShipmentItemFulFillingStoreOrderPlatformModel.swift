

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentItemFulFillingStore
         Used By: Order
     */

    class ShipmentItemFulFillingStore: Codable {
        public var city: String?

        public var address: String?

        public var phone: String?

        public var pincode: String?

        public var locationType: String?

        public var fulfillingStoreId: Int

        public var code: String

        public var storeEmail: String?

        public var meta: [String: Any]?

        public var name: String?

        public var brandStoreTags: String?

        public var state: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case address

            case phone

            case pincode

            case locationType = "location_type"

            case fulfillingStoreId = "fulfilling_store_id"

            case code

            case storeEmail = "store_email"

            case meta

            case name

            case brandStoreTags = "brand_store_tags"

            case state
        }

        public init(address: String? = nil, brandStoreTags: String? = nil, city: String? = nil, code: String, fulfillingStoreId: Int, locationType: String? = nil, meta: [String: Any]? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil, storeEmail: String? = nil) {
            self.city = city

            self.address = address

            self.phone = phone

            self.pincode = pincode

            self.locationType = locationType

            self.fulfillingStoreId = fulfillingStoreId

            self.code = code

            self.storeEmail = storeEmail

            self.meta = meta

            self.name = name

            self.brandStoreTags = brandStoreTags

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                city = try container.decode(String.self, forKey: .city)

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

            do {
                phone = try container.decode(String.self, forKey: .phone)

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

            fulfillingStoreId = try container.decode(Int.self, forKey: .fulfillingStoreId)

            code = try container.decode(String.self, forKey: .code)

            do {
                storeEmail = try container.decode(String.self, forKey: .storeEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                brandStoreTags = try container.decode(String.self, forKey: .brandStoreTags)

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

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(fulfillingStoreId, forKey: .fulfillingStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

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
        public var city: String?

        public var address: String?

        public var phone: String?

        public var pincode: String?

        public var locationType: String?

        public var fulfillingStoreId: Int

        public var code: String

        public var storeEmail: String?

        public var meta: [String: Any]?

        public var name: String?

        public var brandStoreTags: String?

        public var state: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case address

            case phone

            case pincode

            case locationType = "location_type"

            case fulfillingStoreId = "fulfilling_store_id"

            case code

            case storeEmail = "store_email"

            case meta

            case name

            case brandStoreTags = "brand_store_tags"

            case state
        }

        public init(address: String? = nil, brandStoreTags: String? = nil, city: String? = nil, code: String, fulfillingStoreId: Int, locationType: String? = nil, meta: [String: Any]? = nil, name: String? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil, storeEmail: String? = nil) {
            self.city = city

            self.address = address

            self.phone = phone

            self.pincode = pincode

            self.locationType = locationType

            self.fulfillingStoreId = fulfillingStoreId

            self.code = code

            self.storeEmail = storeEmail

            self.meta = meta

            self.name = name

            self.brandStoreTags = brandStoreTags

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                city = try container.decode(String.self, forKey: .city)

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

            do {
                phone = try container.decode(String.self, forKey: .phone)

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

            fulfillingStoreId = try container.decode(Int.self, forKey: .fulfillingStoreId)

            code = try container.decode(String.self, forKey: .code)

            do {
                storeEmail = try container.decode(String.self, forKey: .storeEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

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
                brandStoreTags = try container.decode(String.self, forKey: .brandStoreTags)

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

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(address, forKey: .address)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(fulfillingStoreId, forKey: .fulfillingStoreId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encode(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(brandStoreTags, forKey: .brandStoreTags)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
