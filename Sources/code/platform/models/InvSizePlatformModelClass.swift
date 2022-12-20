

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var currency: String

        public var quantity: Int

        public var priceTransfer: Double?

        public var size: String

        public var itemDimensionsUnitOfMeasure: String?

        public var itemWidth: Double?

        public var priceEffective: Double

        public var expirationDate: String?

        public var itemHeight: Double?

        public var isSet: Bool?

        public var set: InventorySet?

        public var price: Double?

        public var itemWeightUnitOfMeasure: String?

        public var identifiers: [GTIN]

        public var storeCode: String

        public var itemLength: Double?

        public var itemWeight: Double?

        public enum CodingKeys: String, CodingKey {
            case currency

            case quantity

            case priceTransfer = "price_transfer"

            case size

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWidth = "item_width"

            case priceEffective = "price_effective"

            case expirationDate = "expiration_date"

            case itemHeight = "item_height"

            case isSet = "is_set"

            case set

            case price

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case identifiers

            case storeCode = "store_code"

            case itemLength = "item_length"

            case itemWeight = "item_weight"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.currency = currency

            self.quantity = quantity

            self.priceTransfer = priceTransfer

            self.size = size

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWidth = itemWidth

            self.priceEffective = priceEffective

            self.expirationDate = expirationDate

            self.itemHeight = itemHeight

            self.isSet = isSet

            self.set = set

            self.price = price

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.identifiers = identifiers

            self.storeCode = storeCode

            self.itemLength = itemLength

            self.itemWeight = itemWeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

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

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

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
                set = try container.decode(InventorySet.self, forKey: .set)

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
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            storeCode = try container.decode(String.self, forKey: .storeCode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeight, forKey: .itemWeight)
        }
    }
}
