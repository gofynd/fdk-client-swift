

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var storeCode: String

        public var itemWeight: Double?

        public var priceEffective: Double

        public var price: Double?

        public var size: String

        public var priceTransfer: Double?

        public var currency: String

        public var set: InventorySet?

        public var isSet: Bool?

        public var itemWidth: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var identifiers: [GTIN]

        public var itemHeight: Double?

        public var expirationDate: String?

        public var quantity: Int

        public var itemLength: Double?

        public var itemWeightUnitOfMeasure: String?

        public enum CodingKeys: String, CodingKey {
            case storeCode = "store_code"

            case itemWeight = "item_weight"

            case priceEffective = "price_effective"

            case price

            case size

            case priceTransfer = "price_transfer"

            case currency

            case set

            case isSet = "is_set"

            case itemWidth = "item_width"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case identifiers

            case itemHeight = "item_height"

            case expirationDate = "expiration_date"

            case quantity

            case itemLength = "item_length"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.storeCode = storeCode

            self.itemWeight = itemWeight

            self.priceEffective = priceEffective

            self.price = price

            self.size = size

            self.priceTransfer = priceTransfer

            self.currency = currency

            self.set = set

            self.isSet = isSet

            self.itemWidth = itemWidth

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.identifiers = identifiers

            self.itemHeight = itemHeight

            self.expirationDate = expirationDate

            self.quantity = quantity

            self.itemLength = itemLength

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

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
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

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

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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

            quantity = try container.decode(Int.self, forKey: .quantity)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
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

        public var itemWeight: Double?

        public var priceEffective: Double

        public var price: Double?

        public var size: String

        public var priceTransfer: Double?

        public var currency: String

        public var set: InventorySet?

        public var isSet: Bool?

        public var itemWidth: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var identifiers: [GTIN]

        public var itemHeight: Double?

        public var expirationDate: String?

        public var quantity: Int

        public var itemLength: Double?

        public var itemWeightUnitOfMeasure: String?

        public enum CodingKeys: String, CodingKey {
            case storeCode = "store_code"

            case itemWeight = "item_weight"

            case priceEffective = "price_effective"

            case price

            case size

            case priceTransfer = "price_transfer"

            case currency

            case set

            case isSet = "is_set"

            case itemWidth = "item_width"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case identifiers

            case itemHeight = "item_height"

            case expirationDate = "expiration_date"

            case quantity

            case itemLength = "item_length"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.storeCode = storeCode

            self.itemWeight = itemWeight

            self.priceEffective = priceEffective

            self.price = price

            self.size = size

            self.priceTransfer = priceTransfer

            self.currency = currency

            self.set = set

            self.isSet = isSet

            self.itemWidth = itemWidth

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.identifiers = identifiers

            self.itemHeight = itemHeight

            self.expirationDate = expirationDate

            self.quantity = quantity

            self.itemLength = itemLength

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

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
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

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

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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

            quantity = try container.decode(Int.self, forKey: .quantity)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
        }
    }
}
