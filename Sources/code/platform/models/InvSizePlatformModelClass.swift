

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var itemDimensionsUnitOfMeasure: String?

        public var size: String

        public var quantity: Int

        public var isSet: Bool?

        public var set: InventorySet?

        public var identifiers: [GTIN]

        public var itemHeight: Double?

        public var storeCode: String

        public var expirationDate: String?

        public var itemWeightUnitOfMeasure: String?

        public var price: Double

        public var currency: String

        public var priceEffective: Double

        public var priceTransfer: Double?

        public var itemLength: Double?

        public var itemWeight: Double?

        public var itemWidth: Double?

        public enum CodingKeys: String, CodingKey {
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case size

            case quantity

            case isSet = "is_set"

            case set

            case identifiers

            case itemHeight = "item_height"

            case storeCode = "store_code"

            case expirationDate = "expiration_date"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case price

            case currency

            case priceEffective = "price_effective"

            case priceTransfer = "price_transfer"

            case itemLength = "item_length"

            case itemWeight = "item_weight"

            case itemWidth = "item_width"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.size = size

            self.quantity = quantity

            self.isSet = isSet

            self.set = set

            self.identifiers = identifiers

            self.itemHeight = itemHeight

            self.storeCode = storeCode

            self.expirationDate = expirationDate

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.price = price

            self.currency = currency

            self.priceEffective = priceEffective

            self.priceTransfer = priceTransfer

            self.itemLength = itemLength

            self.itemWeight = itemWeight

            self.itemWidth = itemWidth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            price = try container.decode(Double.self, forKey: .price)

            currency = try container.decode(String.self, forKey: .currency)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

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
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(itemWidth, forKey: .itemWidth)
        }
    }
}
