

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateStoreIdMapping
         Used By: Order
     */

    class AffiliateStoreIdMapping: Codable {
        public var storeId: Int

        public var marketplaceStoreId: String

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case marketplaceStoreId = "marketplace_store_id"
        }

        public init(marketplaceStoreId: String, storeId: Int) {
            self.storeId = storeId

            self.marketplaceStoreId = marketplaceStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            marketplaceStoreId = try container.decode(String.self, forKey: .marketplaceStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(marketplaceStoreId, forKey: .marketplaceStoreId)
        }
    }
}
