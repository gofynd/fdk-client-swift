

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryRequest
         Used By: Catalog
     */

    class InventoryRequest: Codable {
        public var item: ItemQuery

        public var companyId: Int

        public var sizes: [InvSize]

        public enum CodingKeys: String, CodingKey {
            case item

            case companyId = "company_id"

            case sizes
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize]) {
            self.item = item

            self.companyId = companyId

            self.sizes = sizes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            item = try container.decode(ItemQuery.self, forKey: .item)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sizes = try container.decode([InvSize].self, forKey: .sizes)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)
        }
    }
}
