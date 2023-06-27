

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var itemWeight: Double?

        public var storeCode: String

        public var size: String

        public var quantity: Int

        public var itemWidth: Double?

        public var set: InventorySet?

        public var expirationDate: String?

        public var priceEffective: Double

        public var itemLength: Double?

        public var identifiers: [GTIN]

        public var itemWeightUnitOfMeasure: String?

        public var isSet: Bool?

        public var itemDimensionsUnitOfMeasure: String?

        public var currency: String

        public var priceTransfer: Double?

        public var price: Double?

        public var itemHeight: Double?

        public enum CodingKeys: String, CodingKey {
            case itemWeight = "item_weight"

            case storeCode = "store_code"

            case size

            case quantity

            case itemWidth = "item_width"

            case set

            case expirationDate = "expiration_date"

            case priceEffective = "price_effective"

            case itemLength = "item_length"

            case identifiers

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case isSet = "is_set"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case currency

            case priceTransfer = "price_transfer"

            case price

            case itemHeight = "item_height"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.itemWeight = itemWeight

            self.storeCode = storeCode

            self.size = size

            self.quantity = quantity

            self.itemWidth = itemWidth

            self.set = set

            self.expirationDate = expirationDate

            self.priceEffective = priceEffective

            self.itemLength = itemLength

            self.identifiers = identifiers

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.isSet = isSet

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.currency = currency

            self.priceTransfer = priceTransfer

            self.price = price

            self.itemHeight = itemHeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            size = try container.decode(String.self, forKey: .size)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

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
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemHeight, forKey: .itemHeight)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var itemWeight: Double?

        public var storeCode: String

        public var size: String

        public var quantity: Int

        public var itemWidth: Double?

        public var set: InventorySet?

        public var expirationDate: String?

        public var priceEffective: Double

        public var itemLength: Double?

        public var identifiers: [GTIN]

        public var itemWeightUnitOfMeasure: String?

        public var isSet: Bool?

        public var itemDimensionsUnitOfMeasure: String?

        public var currency: String

        public var priceTransfer: Double?

        public var price: Double?

        public var itemHeight: Double?

        public enum CodingKeys: String, CodingKey {
            case itemWeight = "item_weight"

            case storeCode = "store_code"

            case size

            case quantity

            case itemWidth = "item_width"

            case set

            case expirationDate = "expiration_date"

            case priceEffective = "price_effective"

            case itemLength = "item_length"

            case identifiers

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case isSet = "is_set"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case currency

            case priceTransfer = "price_transfer"

            case price

            case itemHeight = "item_height"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.itemWeight = itemWeight

            self.storeCode = storeCode

            self.size = size

            self.quantity = quantity

            self.itemWidth = itemWidth

            self.set = set

            self.expirationDate = expirationDate

            self.priceEffective = priceEffective

            self.itemLength = itemLength

            self.identifiers = identifiers

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.isSet = isSet

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.currency = currency

            self.priceTransfer = priceTransfer

            self.price = price

            self.itemHeight = itemHeight
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            size = try container.decode(String.self, forKey: .size)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

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
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemHeight, forKey: .itemHeight)
        }
    }
}
