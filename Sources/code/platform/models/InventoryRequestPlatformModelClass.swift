

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryRequest
         Used By: Catalog
     */

    class InventoryRequest: Codable {
        public var item: ItemQuery

        public var sizes: [InvSize]

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case item

            case sizes

            case companyId = "company_id"
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize]) {
            self.item = item

            self.sizes = sizes

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            item = try container.decode(ItemQuery.self, forKey: .item)

            sizes = try container.decode([InvSize].self, forKey: .sizes)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
