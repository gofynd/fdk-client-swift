

import Foundation
public extension PlatformClient {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var itemDimensionsUnitOfMeasure: String?

        public var currency: String

        public var expirationDate: String?

        public var itemWeight: Double?

        public var quantity: Int

        public var identifiers: [GTIN]

        public var set: InventorySet?

        public var isSet: Bool?

        public var priceTransfer: Double?

        public var itemWidth: Double?

        public var itemWeightUnitOfMeasure: String?

        public var itemLength: Double?

        public var size: [String: Any]

        public var storeCode: String

        public var price: Double?

        public var priceEffective: Double

        public var itemHeight: Double?

        public enum CodingKeys: String, CodingKey {
            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case currency

            case expirationDate = "expiration_date"

            case itemWeight = "item_weight"

            case quantity

            case identifiers

            case set

            case isSet = "is_set"

            case priceTransfer = "price_transfer"

            case itemWidth = "item_width"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case itemLength = "item_length"

            case size

            case storeCode = "store_code"

            case price

            case priceEffective = "price_effective"

            case itemHeight = "item_height"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: [String: Any], storeCode: String) {
            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.currency = currency

            self.expirationDate = expirationDate

            self.itemWeight = itemWeight

            self.quantity = quantity

            self.identifiers = identifiers

            self.set = set

            self.isSet = isSet

            self.priceTransfer = priceTransfer

            self.itemWidth = itemWidth

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.itemLength = itemLength

            self.size = size

            self.storeCode = storeCode

            self.price = price

            self.priceEffective = priceEffective

            self.itemHeight = itemHeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

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

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

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
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

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

            size = try container.decode([String: Any].self, forKey: .size)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemHeight, forKey: .itemHeight)
        }
    }
}
