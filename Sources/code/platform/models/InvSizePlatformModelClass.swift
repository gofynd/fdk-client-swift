

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var set: InventorySet?

        public var itemHeight: Double?

        public var identifiers: [GTIN]

        public var itemDimensionsUnitOfMeasure: String?

        public var expirationDate: String?

        public var itemWeight: Double?

        public var priceTransfer: Double?

        public var itemWeightUnitOfMeasure: String?

        public var size: [String: Any]

        public var itemLength: Double?

        public var currency: String

        public var price: Double?

        public var isSet: Bool?

        public var itemWidth: Double?

        public var quantity: Int

        public var storeCode: String

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case set

            case itemHeight = "item_height"

            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case expirationDate = "expiration_date"

            case itemWeight = "item_weight"

            case priceTransfer = "price_transfer"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case size

            case itemLength = "item_length"

            case currency

            case price

            case isSet = "is_set"

            case itemWidth = "item_width"

            case quantity

            case storeCode = "store_code"

            case priceEffective = "price_effective"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: [String: Any], storeCode: String) {
            self.set = set

            self.itemHeight = itemHeight

            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.expirationDate = expirationDate

            self.itemWeight = itemWeight

            self.priceTransfer = priceTransfer

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.size = size

            self.itemLength = itemLength

            self.currency = currency

            self.price = price

            self.isSet = isSet

            self.itemWidth = itemWidth

            self.quantity = quantity

            self.storeCode = storeCode

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

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
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

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

            size = try container.decode([String: Any].self, forKey: .size)

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
