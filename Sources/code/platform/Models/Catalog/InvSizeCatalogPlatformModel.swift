

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var storeCode: String

        public var expirationDate: String?

        public var isSet: Bool?

        public var priceEffective: Double

        public var quantity: Int

        public var identifiers: [GTIN]

        public var itemDimensionsUnitOfMeasure: String?

        public var price: Double?

        public var itemHeight: Double?

        public var itemWeightUnitOfMeasure: String?

        public var currency: String

        public var itemWidth: Double?

        public var itemLength: Double?

        public var size: String

        public var set: InventorySet?

        public var itemWeight: Double?

        public var priceTransfer: Double?

        public enum CodingKeys: String, CodingKey {
            case storeCode = "store_code"

            case expirationDate = "expiration_date"

            case isSet = "is_set"

            case priceEffective = "price_effective"

            case quantity

            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case price

            case itemHeight = "item_height"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case currency

            case itemWidth = "item_width"

            case itemLength = "item_length"

            case size

            case set

            case itemWeight = "item_weight"

            case priceTransfer = "price_transfer"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.storeCode = storeCode

            self.expirationDate = expirationDate

            self.isSet = isSet

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.price = price

            self.itemHeight = itemHeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.currency = currency

            self.itemWidth = itemWidth

            self.itemLength = itemLength

            self.size = size

            self.set = set

            self.itemWeight = itemWeight

            self.priceTransfer = priceTransfer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

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
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

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

            size = try container.decode(String.self, forKey: .size)

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
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(priceTransfer, forKey: .priceTransfer)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var storeCode: String

        public var expirationDate: String?

        public var isSet: Bool?

        public var priceEffective: Double

        public var quantity: Int

        public var identifiers: [GTIN]

        public var itemDimensionsUnitOfMeasure: String?

        public var price: Double?

        public var itemHeight: Double?

        public var itemWeightUnitOfMeasure: String?

        public var currency: String

        public var itemWidth: Double?

        public var itemLength: Double?

        public var size: String

        public var set: InventorySet?

        public var itemWeight: Double?

        public var priceTransfer: Double?

        public enum CodingKeys: String, CodingKey {
            case storeCode = "store_code"

            case expirationDate = "expiration_date"

            case isSet = "is_set"

            case priceEffective = "price_effective"

            case quantity

            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case price

            case itemHeight = "item_height"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case currency

            case itemWidth = "item_width"

            case itemLength = "item_length"

            case size

            case set

            case itemWeight = "item_weight"

            case priceTransfer = "price_transfer"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.storeCode = storeCode

            self.expirationDate = expirationDate

            self.isSet = isSet

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.price = price

            self.itemHeight = itemHeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.currency = currency

            self.itemWidth = itemWidth

            self.itemLength = itemLength

            self.size = size

            self.set = set

            self.itemWeight = itemWeight

            self.priceTransfer = priceTransfer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

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
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

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

            size = try container.decode(String.self, forKey: .size)

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
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(priceTransfer, forKey: .priceTransfer)
        }
    }
}
