import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CollectionItemRequest
         Used By: Catalog
     */

    class CollectionItemRequest: Codable {
        public var pageSize: Int

        public var pageNo: Int

        public enum CodingKeys: String, CodingKey {
            case pageSize = "page_size"

            case pageNo = "page_no"
        }

        public init(pageNo: Int, pageSize: Int) {
            self.pageSize = pageSize

            self.pageNo = pageNo
        }

        public func duplicate() -> CollectionItemRequest {
            let dict = self.dictionary!
            let copy = CollectionItemRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pageSize = try container.decode(Int.self, forKey: .pageSize)

            pageNo = try container.decode(Int.self, forKey: .pageNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)

            try? container.encodeIfPresent(pageNo, forKey: .pageNo)
        }
    }
}
