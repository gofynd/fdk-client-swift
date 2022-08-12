

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var set: InventorySet?

        public var itemDimensionsUnitOfMeasure: String?

        public var itemWidth: Double?

        public var storeCode: String

        public var itemHeight: Double?

        public var size: String

        public var itemWeight: Double?

        public var expirationDate: String?

        public var isSet: Bool?

        public var priceEffective: Double

        public var currency: String

        public var priceTransfer: Double?

        public var itemLength: Double?

        public var quantity: Int

        public var itemWeightUnitOfMeasure: String?

        public var price: Double?

        public var identifiers: [GTIN]

        public enum CodingKeys: String, CodingKey {
            case set

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWidth = "item_width"

            case storeCode = "store_code"

            case itemHeight = "item_height"

            case size

            case itemWeight = "item_weight"

            case expirationDate = "expiration_date"

            case isSet = "is_set"

            case priceEffective = "price_effective"

            case currency

            case priceTransfer = "price_transfer"

            case itemLength = "item_length"

            case quantity

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case price

            case identifiers
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.set = set

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWidth = itemWidth

            self.storeCode = storeCode

            self.itemHeight = itemHeight

            self.size = size

            self.itemWeight = itemWeight

            self.expirationDate = expirationDate

            self.isSet = isSet

            self.priceEffective = priceEffective

            self.currency = currency

            self.priceTransfer = priceTransfer

            self.itemLength = itemLength

            self.quantity = quantity

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.price = price

            self.identifiers = identifiers
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
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

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

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

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

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
