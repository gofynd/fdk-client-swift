

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var storeCode: String

        public var identifiers: [GTIN]

        public var itemWeight: Double?

        public var size: String

        public var priceEffective: Double

        public var currency: String

        public var isSet: Bool?

        public var itemLength: Double?

        public var itemWeightUnitOfMeasure: String?

        public var itemHeight: Double?

        public var itemWidth: Double?

        public var price: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var priceTransfer: Double?

        public var set: InventorySet?

        public var quantity: Int

        public var expirationDate: String?

        public enum CodingKeys: String, CodingKey {
            case storeCode = "store_code"

            case identifiers

            case itemWeight = "item_weight"

            case size

            case priceEffective = "price_effective"

            case currency

            case isSet = "is_set"

            case itemLength = "item_length"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemHeight = "item_height"

            case itemWidth = "item_width"

            case price

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case priceTransfer = "price_transfer"

            case set

            case quantity

            case expirationDate = "expiration_date"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.storeCode = storeCode

            self.identifiers = identifiers

            self.itemWeight = itemWeight

            self.size = size

            self.priceEffective = priceEffective

            self.currency = currency

            self.isSet = isSet

            self.itemLength = itemLength

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemHeight = itemHeight

            self.itemWidth = itemWidth

            self.price = price

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.priceTransfer = priceTransfer

            self.set = set

            self.quantity = quantity

            self.expirationDate = expirationDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

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
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

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

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        }
    }
}
