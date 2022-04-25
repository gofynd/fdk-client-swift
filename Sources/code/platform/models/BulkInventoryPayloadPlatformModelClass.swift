

import Foundation
public extension PlatformClient {
    /*
         Model: BulkInventoryPayload
         Used By: Catalog
     */

    class BulkInventoryPayload: Codable {
        public var expirationDate: String?

        public var storeId: Int

        public var priceEffective: Double

        public var totalQuantity: Int

        public var priceMarked: Double

        public var sellerIdentifier: String

        public var itemId: Int

        public enum CodingKeys: String, CodingKey {
            case expirationDate = "expiration_date"

            case storeId = "store_id"

            case priceEffective = "price_effective"

            case totalQuantity = "total_quantity"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"
        }

        public init(expirationDate: String? = nil, itemId: Int, priceEffective: Double, priceMarked: Double, sellerIdentifier: String, storeId: Int, totalQuantity: Int) {
            self.expirationDate = expirationDate

            self.storeId = storeId

            self.priceEffective = priceEffective

            self.totalQuantity = totalQuantity

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
