

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var itemWeightUnitOfMeasure: String?

        public var quantity: Int

        public var priceTransfer: Double?

        public var price: Double?

        public var itemWidth: Double?

        public var expirationDate: String?

        public var size: [String: Any]

        public var priceEffective: Double

        public var itemDimensionsUnitOfMeasure: String?

        public var itemWeight: Double?

        public var storeCode: String

        public var itemLength: Double?

        public var currency: String

        public var set: InventorySet?

        public var identifiers: [GTIN]

        public var itemHeight: Double?

        public var isSet: Bool?

        public enum CodingKeys: String, CodingKey {
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case quantity

            case priceTransfer = "price_transfer"

            case price

            case itemWidth = "item_width"

            case expirationDate = "expiration_date"

            case size

            case priceEffective = "price_effective"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWeight = "item_weight"

            case storeCode = "store_code"

            case itemLength = "item_length"

            case currency

            case set

            case identifiers

            case itemHeight = "item_height"

            case isSet = "is_set"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: [String: Any], storeCode: String) {
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.quantity = quantity

            self.priceTransfer = priceTransfer

            self.price = price

            self.itemWidth = itemWidth

            self.expirationDate = expirationDate

            self.size = size

            self.priceEffective = priceEffective

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWeight = itemWeight

            self.storeCode = storeCode

            self.itemLength = itemLength

            self.currency = currency

            self.set = set

            self.identifiers = identifiers

            self.itemHeight = itemHeight

            self.isSet = isSet
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

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
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

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

            size = try container.decode([String: Any].self, forKey: .size)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

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

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)
        }
    }
}
