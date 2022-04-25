

import Foundation
public extension PlatformClient {
    /*
         Model: DownloadFileJob
         Used By: Discount
     */

    class DownloadFileJob: Codable {
        public var brandIds: [Int]?

        public var storeIds: [Int]?

        public enum CodingKeys: String, CodingKey {
            case brandIds = "brand_ids"

            case storeIds = "store_ids"
        }

        public init(brandIds: [Int]? = nil, storeIds: [Int]? = nil) {
            self.brandIds = brandIds

            self.storeIds = storeIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandIds = try container.decode([Int].self, forKey: .brandIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeIds = try container.decode([Int].self, forKey: .storeIds)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandIds, forKey: .brandIds)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
        }
    }
}
