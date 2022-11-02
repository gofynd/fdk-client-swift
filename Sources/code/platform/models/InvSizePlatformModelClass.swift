

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var identifiers: [GTIN]

        public var storeCode: String

        public var priceTransfer: Double?

        public var itemWidth: Double?

        public var price: Double?

        public var priceEffective: Double

        public var set: InventorySet?

        public var itemWeight: Double?

        public var expirationDate: String?

        public var itemHeight: Double?

        public var isSet: Bool?

        public var itemWeightUnitOfMeasure: String?

        public var currency: String

        public var itemDimensionsUnitOfMeasure: String?

        public var quantity: Int

        public var itemLength: Double?

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case storeCode = "store_code"

            case priceTransfer = "price_transfer"

            case itemWidth = "item_width"

            case price

            case priceEffective = "price_effective"

            case set

            case itemWeight = "item_weight"

            case expirationDate = "expiration_date"

            case itemHeight = "item_height"

            case isSet = "is_set"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case currency

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case quantity

            case itemLength = "item_length"

            case size
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.identifiers = identifiers

            self.storeCode = storeCode

            self.priceTransfer = priceTransfer

            self.itemWidth = itemWidth

            self.price = price

            self.priceEffective = priceEffective

            self.set = set

            self.itemWeight = itemWeight

            self.expirationDate = expirationDate

            self.itemHeight = itemHeight

            self.isSet = isSet

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.currency = currency

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.quantity = quantity

            self.itemLength = itemLength

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

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

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
