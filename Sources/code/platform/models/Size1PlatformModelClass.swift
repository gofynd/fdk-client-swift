

import Foundation
public extension PlatformClient {
    /*
         Model: Size1
         Used By: Catalog
     */

    class Size1: Codable {
        public var size: String?

        public var priceTransfer: Double?

        public var itemDimensionsUnitOfMeasure: String?

        public var price: Double

        public var currency: String

        public var itemWeight: Double?

        public var identifiers: [[String: Any]]?

        public var itemLength: Double?

        public var expirationDate: String?

        public var sellerIdentifier: String

        public var quantity: Int

        public var itemHeight: Double?

        public var isSet: Bool?

        public var itemWidth: Double?

        public var itemWeightUnitOfMeasure: String?

        public var storeCode: String

        public var set: InventorySet?

        public var priceEffective: Double

        public enum CodingKeys: String, CodingKey {
            case size

            case priceTransfer = "price_transfer"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case price

            case currency

            case itemWeight = "item_weight"

            case identifiers

            case itemLength = "item_length"

            case expirationDate = "expiration_date"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case itemHeight = "item_height"

            case isSet = "is_set"

            case itemWidth = "item_width"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case storeCode = "store_code"

            case set

            case priceEffective = "price_effective"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [[String: Any]]? = nil, isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, sellerIdentifier: String, set: InventorySet? = nil, size: String? = nil, storeCode: String) {
            self.size = size

            self.priceTransfer = priceTransfer

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.price = price

            self.currency = currency

            self.itemWeight = itemWeight

            self.identifiers = identifiers

            self.itemLength = itemLength

            self.expirationDate = expirationDate

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.itemHeight = itemHeight

            self.isSet = isSet

            self.itemWidth = itemWidth

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.storeCode = storeCode

            self.set = set

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(String.self, forKey: .size)

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

            price = try container.decode(Double.self, forKey: .price)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifiers = try container.decode([[String: Any]].self, forKey: .identifiers)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

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

            storeCode = try container.decode(String.self, forKey: .storeCode)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(size, forKey: .size)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encode(identifiers, forKey: .identifiers)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
