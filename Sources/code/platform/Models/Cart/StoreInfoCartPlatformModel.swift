

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: StoreInfo
         Used By: Cart
     */

    class StoreInfo: Codable {
        public var name: String?

        public var uid: Int?

        public var storeCode: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case uid

            case storeCode = "store_code"
        }

        public init(name: String? = nil, storeCode: String? = nil, uid: Int? = nil) {
            self.name = name

            self.uid = uid

            self.storeCode = storeCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                storeCode = try container.decode(String.self, forKey: .storeCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
        }
    }
}
