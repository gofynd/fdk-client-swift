

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var isSet: Bool?

        public var currency: String

        public var itemWeight: Double?

        public var itemHeight: Double?

        public var identifiers: [GTIN]

        public var set: InventorySet?

        public var priceTransfer: Double?

        public var itemLength: Double?

        public var price: Double?

        public var quantity: Int

        public var itemWeightUnitOfMeasure: String?

        public var itemWidth: Double?

        public var priceEffective: Double

        public var storeCode: String

        public var size: String

        public var itemDimensionsUnitOfMeasure: String?

        public var expirationDate: String?

        public enum CodingKeys: String, CodingKey {
            case isSet = "is_set"

            case currency

            case itemWeight = "item_weight"

            case itemHeight = "item_height"

            case identifiers

            case set

            case priceTransfer = "price_transfer"

            case itemLength = "item_length"

            case price

            case quantity

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemWidth = "item_width"

            case priceEffective = "price_effective"

            case storeCode = "store_code"

            case size

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case expirationDate = "expiration_date"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.isSet = isSet

            self.currency = currency

            self.itemWeight = itemWeight

            self.itemHeight = itemHeight

            self.identifiers = identifiers

            self.set = set

            self.priceTransfer = priceTransfer

            self.itemLength = itemLength

            self.price = price

            self.quantity = quantity

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemWidth = itemWidth

            self.priceEffective = priceEffective

            self.storeCode = storeCode

            self.size = size

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.expirationDate = expirationDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

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
                set = try container.decode(InventorySet.self, forKey: .set)

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
                itemLength = try container.decode(Double.self, forKey: .itemLength)

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

            quantity = try container.decode(Int.self, forKey: .quantity)

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

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            size = try container.decode(String.self, forKey: .size)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        }
    }
}
