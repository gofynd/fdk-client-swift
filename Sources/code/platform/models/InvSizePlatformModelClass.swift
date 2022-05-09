

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var itemHeight: Double?

        public var priceTransfer: Double?

        public var currency: String

        public var itemLength: Double?

        public var expirationDate: String?

        public var storeCode: String

        public var itemWeightUnitOfMeasure: String?

        public var itemWeight: Double?

        public var quantity: Int

        public var size: String

        public var isSet: Bool?

        public var itemWidth: Double?

        public var price: Double

        public var itemDimensionsUnitOfMeasure: String?

        public var priceEffective: Double

        public var identifiers: [GTIN]

        public var set: InventorySet?

        public enum CodingKeys: String, CodingKey {
            case itemHeight = "item_height"

            case priceTransfer = "price_transfer"

            case currency

            case itemLength = "item_length"

            case expirationDate = "expiration_date"

            case storeCode = "store_code"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemWeight = "item_weight"

            case quantity

            case size

            case isSet = "is_set"

            case itemWidth = "item_width"

            case price

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case priceEffective = "price_effective"

            case identifiers

            case set
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.itemHeight = itemHeight

            self.priceTransfer = priceTransfer

            self.currency = currency

            self.itemLength = itemLength

            self.expirationDate = expirationDate

            self.storeCode = storeCode

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemWeight = itemWeight

            self.quantity = quantity

            self.size = size

            self.isSet = isSet

            self.itemWidth = itemWidth

            self.price = price

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.priceEffective = priceEffective

            self.identifiers = identifiers

            self.set = set
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

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

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

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

            size = try container.decode(String.self, forKey: .size)

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

            price = try container.decode(Double.self, forKey: .price)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(set, forKey: .set)
        }
    }
}
