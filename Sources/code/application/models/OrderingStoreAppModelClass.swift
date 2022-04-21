

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderingStore
         Used By: Configuration
     */
    class OrderingStore: Codable {
        public var address: OptedStoreAddress?

        public var id: String?

        public var uid: Int?

        public var name: String?

        public var displayName: String?

        public var storeType: String?

        public var storeCode: String?

        public var pincode: Int?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case address

            case id = "_id"

            case uid

            case name

            case displayName = "display_name"

            case storeType = "store_type"

            case storeCode = "store_code"

            case pincode

            case code
        }

        public init(address: OptedStoreAddress? = nil, code: String? = nil, displayName: String? = nil, name: String? = nil, pincode: Int? = nil, storeCode: String? = nil, storeType: String? = nil, uid: Int? = nil, id: String? = nil) {
            self.address = address

            self.id = id

            self.uid = uid

            self.name = name

            self.displayName = displayName

            self.storeType = storeType

            self.storeCode = storeCode

            self.pincode = pincode

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address = try container.decode(OptedStoreAddress.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

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
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeType = try container.decode(String.self, forKey: .storeType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(storeType, forKey: .storeType)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
