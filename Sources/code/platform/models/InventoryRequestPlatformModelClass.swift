

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryRequest
         Used By: Catalog
     */

    class InventoryRequest: Codable {
        public var companyId: Int

        public var sizes: [InvSize]

        public var item: ItemQuery

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case sizes

            case item
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize]) {
            self.companyId = companyId

            self.sizes = sizes

            self.item = item
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            sizes = try container.decode([InvSize].self, forKey: .sizes)

            item = try container.decode(ItemQuery.self, forKey: .item)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(item, forKey: .item)
        }
    }
}
