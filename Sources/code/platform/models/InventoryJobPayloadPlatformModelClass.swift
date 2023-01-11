

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryJobPayload
         Used By: Catalog
     */

    class InventoryJobPayload: Codable {
        public var tags: [String]?

        public var storeCode: String

        public var totalQuantity: Int?

        public var price: Double?

        public var expirationDate: String?

        public var priceMarked: Double?

        public var traceId: String?

        public var sellerIdentifier: String

        public var priceEffective: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var currency: String?

        public var itemWeightUnitOfMeasure: String?

        public var quantity: Int?

        public enum CodingKeys: String, CodingKey {
            case tags

            case storeCode = "store_code"

            case totalQuantity = "total_quantity"

            case price

            case expirationDate = "expiration_date"

            case priceMarked = "price_marked"

            case traceId = "trace_id"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case currency

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case quantity
        }

        public init(currency: String? = nil, expirationDate: String? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemWeightUnitOfMeasure: String? = nil, price: Double? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, quantity: Int? = nil, sellerIdentifier: String, storeCode: String, tags: [String]? = nil, totalQuantity: Int? = nil, traceId: String? = nil) {
            self.tags = tags

            self.storeCode = storeCode

            self.totalQuantity = totalQuantity

            self.price = price

            self.expirationDate = expirationDate

            self.priceMarked = priceMarked

            self.traceId = traceId

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.currency = currency

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                totalQuantity = try container.decode(Int.self, forKey: .totalQuantity)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)

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
                currency = try container.decode(String.self, forKey: .currency)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encode(traceId, forKey: .traceId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
