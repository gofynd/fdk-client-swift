

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var itemHeight: Double?

        public var storeCode: String

        public var itemWidth: Double?

        public var priceEffective: Double

        public var price: Double?

        public var expirationDate: String?

        public var currency: String

        public var set: InventorySet?

        public var quantity: Int

        public var identifiers: [GTIN]

        public var itemLength: Double?

        public var itemWeight: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var priceTransfer: Double?

        public var isSet: Bool?

        public var size: String

        public var itemWeightUnitOfMeasure: String?

        public enum CodingKeys: String, CodingKey {
            case itemHeight = "item_height"

            case storeCode = "store_code"

            case itemWidth = "item_width"

            case priceEffective = "price_effective"

            case price

            case expirationDate = "expiration_date"

            case currency

            case set

            case quantity

            case identifiers

            case itemLength = "item_length"

            case itemWeight = "item_weight"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case priceTransfer = "price_transfer"

            case isSet = "is_set"

            case size

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.itemHeight = itemHeight

            self.storeCode = storeCode

            self.itemWidth = itemWidth

            self.priceEffective = priceEffective

            self.price = price

            self.expirationDate = expirationDate

            self.currency = currency

            self.set = set

            self.quantity = quantity

            self.identifiers = identifiers

            self.itemLength = itemLength

            self.itemWeight = itemWeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.priceTransfer = priceTransfer

            self.isSet = isSet

            self.size = size

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

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

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(size, forKey: .size)

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
        public var itemHeight: Double?

        public var storeCode: String

        public var itemWidth: Double?

        public var priceEffective: Double

        public var price: Double?

        public var expirationDate: String?

        public var currency: String

        public var set: InventorySet?

        public var quantity: Int

        public var identifiers: [GTIN]

        public var itemLength: Double?

        public var itemWeight: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var priceTransfer: Double?

        public var isSet: Bool?

        public var size: String

        public var itemWeightUnitOfMeasure: String?

        public enum CodingKeys: String, CodingKey {
            case itemHeight = "item_height"

            case storeCode = "store_code"

            case itemWidth = "item_width"

            case priceEffective = "price_effective"

            case price

            case expirationDate = "expiration_date"

            case currency

            case set

            case quantity

            case identifiers

            case itemLength = "item_length"

            case itemWeight = "item_weight"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case priceTransfer = "price_transfer"

            case isSet = "is_set"

            case size

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: String, storeCode: String) {
            self.itemHeight = itemHeight

            self.storeCode = storeCode

            self.itemWidth = itemWidth

            self.priceEffective = priceEffective

            self.price = price

            self.expirationDate = expirationDate

            self.currency = currency

            self.set = set

            self.quantity = quantity

            self.identifiers = identifiers

            self.itemLength = itemLength

            self.itemWeight = itemWeight

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.priceTransfer = priceTransfer

            self.isSet = isSet

            self.size = size

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemHeight = try container.decode(Double.self, forKey: .itemHeight)

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

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

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

            currency = try container.decode(String.self, forKey: .currency)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

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

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)
        }
    }
}
