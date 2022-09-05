

import Foundation
public extension PlatformClient {
    /*
         Model: Size1
         Used By: Catalog
     */

    class Size1: Codable {
        public var itemWeightUnitOfMeasure: String?

        public var identifiers: [[String: Any]]?

        public var storeCode: String

        public var currency: String

        public var expirationDate: String?

        public var price: Double

        public var itemDimensionsUnitOfMeasure: String?

        public var itemWeight: Double?

        public var isSet: Bool?

        public var itemHeight: Double?

        public var priceTransfer: Double?

        public var itemWidth: Double?

        public var sellerIdentifier: String

        public var itemLength: Double?

        public var quantity: Int

        public var set: InventorySet?

        public var priceEffective: Double

        public var size: String?

        public enum CodingKeys: String, CodingKey {
            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case identifiers

            case storeCode = "store_code"

            case currency

            case expirationDate = "expiration_date"

            case price

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case itemWeight = "item_weight"

            case isSet = "is_set"

            case itemHeight = "item_height"

            case priceTransfer = "price_transfer"

            case itemWidth = "item_width"

            case sellerIdentifier = "seller_identifier"

            case itemLength = "item_length"

            case quantity

            case set

            case priceEffective = "price_effective"

            case size
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [[String: Any]]? = nil, isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, sellerIdentifier: String, set: InventorySet? = nil, size: String? = nil, storeCode: String) {
            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.identifiers = identifiers

            self.storeCode = storeCode

            self.currency = currency

            self.expirationDate = expirationDate

            self.price = price

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.itemWeight = itemWeight

            self.isSet = isSet

            self.itemHeight = itemHeight

            self.priceTransfer = priceTransfer

            self.itemWidth = itemWidth

            self.sellerIdentifier = sellerIdentifier

            self.itemLength = itemLength

            self.quantity = quantity

            self.set = set

            self.priceEffective = priceEffective

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemWeightUnitOfMeasure = try container.decode(String.self, forKey: .itemWeightUnitOfMeasure)

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

            storeCode = try container.decode(String.self, forKey: .storeCode)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            price = try container.decode(Double.self, forKey: .price)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

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
                isSet = try container.decode(Bool.self, forKey: .isSet)

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

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encode(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(size, forKey: .size)
        }
    }
}
