

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InvSize
         Used By: Catalog
     */

    class InvSize: Codable {
        public var itemWeight: Double?

        public var itemHeight: Double?

        public var itemLength: Double?

        public var itemWeightUnitOfMeasure: String?

        public var identifiers: [GTIN]

        public var price: Double?

        public var size: [String: Any]

        public var priceEffective: Double

        public var expirationDate: String?

        public var storeCode: String

        public var isSet: Bool?

        public var currency: String

        public var itemWidth: Double?

        public var set: InventorySet?

        public var priceTransfer: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case itemWeight = "item_weight"

            case itemHeight = "item_height"

            case itemLength = "item_length"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case identifiers

            case price

            case size

            case priceEffective = "price_effective"

            case expirationDate = "expiration_date"

            case storeCode = "store_code"

            case isSet = "is_set"

            case currency

            case itemWidth = "item_width"

            case set

            case priceTransfer = "price_transfer"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case quantity
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: [String: Any], storeCode: String) {
            self.itemWeight = itemWeight

            self.itemHeight = itemHeight

            self.itemLength = itemLength

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.identifiers = identifiers

            self.price = price

            self.size = size

            self.priceEffective = priceEffective

            self.expirationDate = expirationDate

            self.storeCode = storeCode

            self.isSet = isSet

            self.currency = currency

            self.itemWidth = itemWidth

            self.set = set

            self.priceTransfer = priceTransfer

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

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

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode([String: Any].self, forKey: .size)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                set = try container.decode(InventorySet.self, forKey: .set)

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
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
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

        public var itemHeight: Double?

        public var itemLength: Double?

        public var itemWeightUnitOfMeasure: String?

        public var identifiers: [GTIN]

        public var price: Double?

        public var size: [String: Any]

        public var priceEffective: Double

        public var expirationDate: String?

        public var storeCode: String

        public var isSet: Bool?

        public var currency: String

        public var itemWidth: Double?

        public var set: InventorySet?

        public var priceTransfer: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case itemWeight = "item_weight"

            case itemHeight = "item_height"

            case itemLength = "item_length"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case identifiers

            case price

            case size

            case priceEffective = "price_effective"

            case expirationDate = "expiration_date"

            case storeCode = "store_code"

            case isSet = "is_set"

            case currency

            case itemWidth = "item_width"

            case set

            case priceTransfer = "price_transfer"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case quantity
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [GTIN], isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double? = nil, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, set: InventorySet? = nil, size: [String: Any], storeCode: String) {
            self.itemWeight = itemWeight

            self.itemHeight = itemHeight

            self.itemLength = itemLength

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.identifiers = identifiers

            self.price = price

            self.size = size

            self.priceEffective = priceEffective

            self.expirationDate = expirationDate

            self.storeCode = storeCode

            self.isSet = isSet

            self.currency = currency

            self.itemWidth = itemWidth

            self.set = set

            self.priceTransfer = priceTransfer

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

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

            identifiers = try container.decode([GTIN].self, forKey: .identifiers)

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode([String: Any].self, forKey: .size)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)

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
                set = try container.decode(InventorySet.self, forKey: .set)

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
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
