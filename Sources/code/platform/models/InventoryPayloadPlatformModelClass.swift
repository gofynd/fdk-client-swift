

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryPayload
         Used By: Catalog
     */

    class InventoryPayload: Codable {
        public var expirationDate: String?

        public var priceEffective: Double

        public var sellerIdentifier: String

        public var priceMarked: Double

        public var storeId: Int

        public var totalQuantity: Int

        public enum CodingKeys: String, CodingKey {
            case expirationDate = "expiration_date"

            case priceEffective = "price_effective"

            case sellerIdentifier = "seller_identifier"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case totalQuantity = "total_quantity"
        }

        public init(expirationDate: String? = nil, priceEffective: Double, priceMarked: Double, sellerIdentifier: String, storeId: Int, totalQuantity: Int) {
            self.expirationDate = expirationDate

            self.priceEffective = priceEffective

            self.sellerIdentifier = sellerIdentifier

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.totalQuantity = totalQuantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)
        }
    }
}
