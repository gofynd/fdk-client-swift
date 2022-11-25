

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateStoreIdMapping
         Used By: OrderManage
     */

    class AffiliateStoreIdMapping: Codable {
        public var marketplaceStoreId: String

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case marketplaceStoreId = "marketplace_store_id"

            case storeId = "store_id"
        }

        public init(marketplaceStoreId: String, storeId: Int) {
            self.marketplaceStoreId = marketplaceStoreId

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            marketplaceStoreId = try container.decode(String.self, forKey: .marketplaceStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marketplaceStoreId, forKey: .marketplaceStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
