

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InventoryJobPayload
         Used By: Catalog
     */

    class InventoryJobPayload: Codable {
        public var traceId: String?

        public var tags: [String]?

        public var quantity: Int?

        public var storeCode: String

        public var totalQuantity: Int?

        public var currency: String?

        public var itemDimensionsUnitOfMeasure: String?

        public var sellerIdentifier: String

        public var expirationDate: String?

        public var itemWeightUnitOfMeasure: String?

        public var price: Double?

        public var priceMarked: Double?

        public var priceEffective: Double?

        public enum CodingKeys: String, CodingKey {
            case traceId = "trace_id"

            case tags

            case quantity

            case storeCode = "store_code"

            case totalQuantity = "total_quantity"

            case currency

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case sellerIdentifier = "seller_identifier"

            case expirationDate = "expiration_date"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case price

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"
        }

        public init(currency: String? = nil, expirationDate: String? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemWeightUnitOfMeasure: String? = nil, price: Double? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, quantity: Int? = nil, sellerIdentifier: String, storeCode: String, tags: [String]? = nil, totalQuantity: Int? = nil, traceId: String? = nil) {
            self.traceId = traceId

            self.tags = tags

            self.quantity = quantity

            self.storeCode = storeCode

            self.totalQuantity = totalQuantity

            self.currency = currency

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.sellerIdentifier = sellerIdentifier

            self.expirationDate = expirationDate

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.price = price

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

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
                currency = try container.decode(String.self, forKey: .currency)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                price = try container.decode(Double.self, forKey: .price)

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
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(traceId, forKey: .traceId)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InventoryJobPayload
         Used By: Catalog
     */

    class InventoryJobPayload: Codable {
        public var traceId: String?

        public var tags: [String]?

        public var quantity: Int?

        public var storeCode: String

        public var totalQuantity: Int?

        public var currency: String?

        public var itemDimensionsUnitOfMeasure: String?

        public var sellerIdentifier: String

        public var expirationDate: String?

        public var itemWeightUnitOfMeasure: String?

        public var price: Double?

        public var priceMarked: Double?

        public var priceEffective: Double?

        public enum CodingKeys: String, CodingKey {
            case traceId = "trace_id"

            case tags

            case quantity

            case storeCode = "store_code"

            case totalQuantity = "total_quantity"

            case currency

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case sellerIdentifier = "seller_identifier"

            case expirationDate = "expiration_date"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case price

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"
        }

        public init(currency: String? = nil, expirationDate: String? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemWeightUnitOfMeasure: String? = nil, price: Double? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, quantity: Int? = nil, sellerIdentifier: String, storeCode: String, tags: [String]? = nil, totalQuantity: Int? = nil, traceId: String? = nil) {
            self.traceId = traceId

            self.tags = tags

            self.quantity = quantity

            self.storeCode = storeCode

            self.totalQuantity = totalQuantity

            self.currency = currency

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.sellerIdentifier = sellerIdentifier

            self.expirationDate = expirationDate

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.price = price

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                traceId = try container.decode(String.self, forKey: .traceId)

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
                quantity = try container.decode(Int.self, forKey: .quantity)

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
                currency = try container.decode(String.self, forKey: .currency)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                price = try container.decode(Double.self, forKey: .price)

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
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(traceId, forKey: .traceId)

            try? container.encode(tags, forKey: .tags)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(totalQuantity, forKey: .totalQuantity)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
