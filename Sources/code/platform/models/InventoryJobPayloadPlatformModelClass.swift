

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryJobPayload
         Used By: Catalog
     */

    class InventoryJobPayload: Codable {
        public var expirationDate: String?

        public var currency: String?

        public var sellerIdentifier: String

        public var itemDimensionsUnitOfMeasure: String?

        public var itemWeightUnitOfMeasure: String?

        public var totalQuantity: Int?

        public var priceEffective: Double?

        public var price: Double?

        public var traceId: String?

        public var quantity: Int?

        public var priceMarked: Double?

        public var storeCode: String

        public var tags: [String]?

        public enum CodingKeys: String, CodingKey {
            case expirationDate = "expiration_date"

            case currency

            case sellerIdentifier = "seller_identifier"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case totalQuantity = "total_quantity"

            case priceEffective = "price_effective"

            case price

            case traceId = "trace_id"

            case quantity

            case priceMarked = "price_marked"

            case storeCode = "store_code"

            case tags
        }

        public init(currency: String? = nil, expirationDate: String? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemWeightUnitOfMeasure: String? = nil, price: Double? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, quantity: Int? = nil, sellerIdentifier: String, storeCode: String, tags: [String]? = nil, totalQuantity: Int? = nil, traceId: String? = nil) {
            self.expirationDate = expirationDate

            self.currency = currency

            self.sellerIdentifier = sellerIdentifier

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.totalQuantity = totalQuantity

            self.priceEffective = priceEffective

            self.price = price

            self.traceId = traceId

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.storeCode = storeCode

            self.tags = tags
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

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
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

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
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(traceId, forKey: .traceId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(tags, forKey: .tags)
        }
    }
}
