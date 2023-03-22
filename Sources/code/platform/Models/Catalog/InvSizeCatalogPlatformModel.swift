

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var currency: String

        public var price: Double?

        public var set: InventorySet?

        public var itemWidth: Double?

        public var priceEffective: Double

        public var isSet: Bool?

        public var itemLength: Double?

        public var itemWeight: Double?

        public var expirationDate: String?

        public var storeCode: String

        public var priceTransfer: Double?

        public var itemHeight: Double?

        public var quantity: Int

        public var size: [String: Any]

        public var itemWeightUnitOfMeasure: String?

        public var identifiers: [GTIN]

        public var itemDimensionsUnitOfMeasure: String?

        public enum CodingKeys: String, CodingKey {
            case currency

            case price

            case set

            case itemWidth = "item_width"

            case priceEffective = "price_effective"

            case isSet = "is_set"

            case itemLength = "item_length"

            case itemWeight = "item_weight"

            case expirationDate = "expiration_date"

            case storeCode = "store_code"

            case priceTransfer = "price_transfer"

            case itemHeight = "item_height"

            case quantity

            case size

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: [String: Any], storeCode: String) {
            self.currency = currency

            self.price = price

            self.set = set

            self.itemWidth = itemWidth

            self.priceEffective = priceEffective

            self.isSet = isSet

            self.itemLength = itemLength

            self.itemWeight = itemWeight

            self.expirationDate = expirationDate

            self.storeCode = storeCode

            self.priceTransfer = priceTransfer

            self.itemHeight = itemHeight

            self.quantity = quantity

            self.size = size

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                price = try container.decode(Double.self, forKey: .price)

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
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

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

            quantity = try container.decode(Int.self, forKey: .quantity)

            size = try container.decode([String: Any].self, forKey: .size)

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var currency: String

        public var price: Double?

        public var set: InventorySet?

        public var itemWidth: Double?

        public var priceEffective: Double

        public var isSet: Bool?

        public var itemLength: Double?

        public var itemWeight: Double?

        public var expirationDate: String?

        public var storeCode: String

        public var priceTransfer: Double?

        public var itemHeight: Double?

        public var quantity: Int

        public var size: [String: Any]

        public var itemWeightUnitOfMeasure: String?

        public var identifiers: [GTIN]

        public var itemDimensionsUnitOfMeasure: String?

        public enum CodingKeys: String, CodingKey {
            case currency

            case price

            case set

            case itemWidth = "item_width"

            case priceEffective = "price_effective"

            case isSet = "is_set"

            case itemLength = "item_length"

            case itemWeight = "item_weight"

            case expirationDate = "expiration_date"

            case storeCode = "store_code"

            case priceTransfer = "price_transfer"

            case itemHeight = "item_height"

            case quantity

            case size

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case identifiers

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: [String: Any], storeCode: String) {
            self.currency = currency

            self.price = price

            self.set = set

            self.itemWidth = itemWidth

            self.priceEffective = priceEffective

            self.isSet = isSet

            self.itemLength = itemLength

            self.itemWeight = itemWeight

            self.expirationDate = expirationDate

            self.storeCode = storeCode

            self.priceTransfer = priceTransfer

            self.itemHeight = itemHeight

            self.quantity = quantity

            self.size = size

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.identifiers = identifiers

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                price = try container.decode(Double.self, forKey: .price)

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
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                priceTransfer = try container.decode(Double.self, forKey: .priceTransfer)

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

            quantity = try container.decode(Int.self, forKey: .quantity)

            size = try container.decode([String: Any].self, forKey: .size)

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)
        }
    }
}
