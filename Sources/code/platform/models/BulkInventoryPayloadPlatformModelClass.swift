

import Foundation
public extension PlatformClient {
    /*
         Model: BulkInventoryPayload
         Used By: Catalog
     */

    class BulkInventoryPayload: Codable {
        public var priceMarked: Double

        public var sellerIdentifier: String

        public var storeId: Int

        public var expirationDate: String?

        public var itemId: Int

        public var priceEffective: Double

        public var totalQuantity: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case expirationDate = "expiration_date"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case totalQuantity = "total_quantity"
        }

        public init(expirationDate: String? = nil, itemId: Int, priceEffective: Double, priceMarked: Double, sellerIdentifier: String, storeId: Int, totalQuantity: Int) {
            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.expirationDate = expirationDate

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.totalQuantity = totalQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
        }
    }
}
