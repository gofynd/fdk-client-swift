

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryJobPayload
         Used By: Catalog
     */

    class InventoryJobPayload: Codable {
        public var storeCode: String

        public var currency: String?

        public var priceEffective: Double?

        public var tags: [String]?

        public var totalQuantity: Int?

        public var itemWeightUnitOfMeasure: String?

        public var priceMarked: Double?

        public var sellerIdentifier: String

        public var price: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var quantity: Int?

        public var expirationDate: String?

        public enum CodingKeys: String, CodingKey {
            case storeCode = "store_code"

            case currency

            case priceEffective = "price_effective"

            case tags

            case totalQuantity = "total_quantity"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case priceMarked = "price_marked"

            case sellerIdentifier = "seller_identifier"

            case price

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case quantity

            case expirationDate = "expiration_date"
        }

        public init(currency: String? = nil, expirationDate: String? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemWeightUnitOfMeasure: String? = nil, price: Double? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, quantity: Int? = nil, sellerIdentifier: String, storeCode: String, tags: [String]? = nil, totalQuantity: Int? = nil) {
            self.storeCode = storeCode

            self.currency = currency

            self.priceEffective = priceEffective

            self.tags = tags

            self.totalQuantity = totalQuantity

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.priceMarked = priceMarked

            self.sellerIdentifier = sellerIdentifier

            self.price = price

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.quantity = quantity

            self.expirationDate = expirationDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        }
    }
}
