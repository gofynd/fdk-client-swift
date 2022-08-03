

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var isSet: Bool?

        public var size: String

        public var itemHeight: Double?

        public var itemWeight: Double?

        public var quantity: Int

        public var itemDimensionsUnitOfMeasure: String?

        public var set: InventorySet?

        public var priceEffective: Double

        public var storeCode: String

        public var currency: String

        public var itemWeightUnitOfMeasure: String?

        public var itemWidth: Double?

        public var price: Double?

        public var itemLength: Double?

        public var priceTransfer: Double?

        public var expirationDate: String?

        public var identifiers: [GTIN]

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case size

            case itemHeight = "item_height"

            case itemWeight = "item_weight"

            case quantity

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case set

            case priceEffective = "price_effective"

            case storeCode = "store_code"

            case currency

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemWidth = "item_width"

            case price

            case itemLength = "item_length"

            case priceTransfer = "price_transfer"

            case expirationDate = "expiration_date"

            case identifiers
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.isSet = isSet

            self.size = size

            self.itemHeight = itemHeight

            self.itemWeight = itemWeight

            self.quantity = quantity

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.set = set

            self.priceEffective = priceEffective

            self.storeCode = storeCode

            self.currency = currency

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemWidth = itemWidth

            self.price = price

            self.itemLength = itemLength

            self.priceTransfer = priceTransfer

            self.expirationDate = expirationDate

            self.identifiers = identifiers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

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
                price = try container.decode(Double.self, forKey: .price)

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

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

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

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)
        }
    }
}
