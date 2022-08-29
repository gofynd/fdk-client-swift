

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var set: InventorySet?

        public var storeCode: String

        public var priceEffective: Double

        public var priceTransfer: Double?

        public var identifiers: [GTIN]

        public var quantity: Int

        public var itemHeight: Double?

        public var itemLength: Double?

        public var itemWidth: Double?

        public var itemWeightUnitOfMeasure: String?

        public var expirationDate: String?

        public var itemWeight: Double?

        public var price: Double?

        public var currency: String

        public var size: String

        public var isSet: Bool?

        public var itemDimensionsUnitOfMeasure: String?

        public enum CodingKeys: String, CodingKey {
            case set

            case storeCode = "store_code"

            case priceEffective = "price_effective"

            case priceTransfer = "price_transfer"

            case identifiers

            case quantity

            case itemHeight = "item_height"

            case itemLength = "item_length"

            case itemWidth = "item_width"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case expirationDate = "expiration_date"

            case itemWeight = "item_weight"

            case price

            case currency

            case size

            case isSet = "is_set"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.set = set

            self.storeCode = storeCode

            self.priceEffective = priceEffective

            self.priceTransfer = priceTransfer

            self.identifiers = identifiers

            self.quantity = quantity

            self.itemHeight = itemHeight

            self.itemLength = itemLength

            self.itemWidth = itemWidth

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.expirationDate = expirationDate

            self.itemWeight = itemWeight

            self.price = price

            self.currency = currency

            self.size = size

            self.isSet = isSet

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

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
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            size = try container.decode(String.self, forKey: .size)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
        }
    }
}
