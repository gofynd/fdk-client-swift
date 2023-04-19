

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryRequest
         Used By: Catalog
     */

    class InventoryRequest: Codable {
        public var sizes: [InvSize]

        public var companyId: Int

        public var item: ItemQuery

        public enum CodingKeys: String, CodingKey {
            case sizes

            case companyId = "company_id"

            case item
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize]) {
            self.sizes = sizes

            self.companyId = companyId

            self.item = item
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sizes = try container.decode([InvSize].self, forKey: .sizes)

            companyId = try container.decode(Int.self, forKey: .companyId)

            item = try container.decode(ItemQuery.self, forKey: .item)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(item, forKey: .item)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryRequest
         Used By: Catalog
     */

    class InventoryRequest: Codable {
        public var sizes: [InvSize]

        public var companyId: Int

        public var item: ItemQuery

        public enum CodingKeys: String, CodingKey {
            case sizes

            case companyId = "company_id"

            case item
        }

        public init(companyId: Int, item: ItemQuery, sizes: [InvSize]) {
            self.sizes = sizes

            self.companyId = companyId

            self.item = item
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sizes = try container.decode([InvSize].self, forKey: .sizes)

            companyId = try container.decode(Int.self, forKey: .companyId)

            item = try container.decode(ItemQuery.self, forKey: .item)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(item, forKey: .item)
        }
    }
}
