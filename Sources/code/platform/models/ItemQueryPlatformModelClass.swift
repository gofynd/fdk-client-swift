

import Foundation
public extension PlatformClient {
    /*
         Model: ItemQuery
         Used By: Catalog
     */

    class ItemQuery: Codable {
        public var itemCode: String?

        public var uid: Int?

        public var brandUid: Int?

        public enum CodingKeys: String, CodingKey {
            case itemCode = "item_code"

            case uid

            case brandUid = "brand_uid"
        }

        public init(brandUid: Int? = nil, itemCode: String? = nil, uid: Int? = nil) {
            self.itemCode = itemCode

            self.uid = uid

            self.brandUid = brandUid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

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
                brandUid = try container.decode(Int.self, forKey: .brandUid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)
        }
    }
}
