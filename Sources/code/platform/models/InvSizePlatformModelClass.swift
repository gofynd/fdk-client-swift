

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var priceEffective: Double

        public var priceTransfer: Double?

        public var identifiers: [GTIN]

        public var itemLength: Double?

        public var itemWeight: Double?

        public var storeCode: String

        public var itemWidth: Double?

        public var quantity: Int

        public var isSet: Bool?

        public var itemHeight: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var size: String

        public var itemWeightUnitOfMeasure: String?

        public var currency: String

        public var price: Double?

        public var expirationDate: String?

        public var set: InventorySet?

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case priceTransfer = "price_transfer"

            case identifiers

            case itemLength = "item_length"

            case itemWeight = "item_weight"

            case storeCode = "store_code"

            case itemWidth = "item_width"

            case quantity

            case isSet = "is_set"

            case itemHeight = "item_height"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case size

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case currency

            case price

            case expirationDate = "expiration_date"

            case set
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.priceEffective = priceEffective

            self.priceTransfer = priceTransfer

            self.identifiers = identifiers

            self.itemLength = itemLength

            self.itemWeight = itemWeight

            self.storeCode = storeCode

            self.itemWidth = itemWidth

            self.quantity = quantity

            self.isSet = isSet

            self.itemHeight = itemHeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.size = size

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.currency = currency

            self.price = price

            self.expirationDate = expirationDate

            self.set = set
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

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
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(set, forKey: .set)
        }
    }
}
