import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: Size1
         Used By: Catalog
     */

    class Size1: Codable {
        public var itemLength: Double?

        public var itemWeightUnitOfMeasure: String?

        public var size: String?

        public var sellerIdentifier: String

        public var itemWeight: Double?

        public var isSet: Bool?

        public var itemDimensionsUnitOfMeasure: String?

        public var identifiers: [[String: Any]]?

        public var itemWidth: Double?

        public var itemHeight: Double?

        public var quantity: Int

        public var price: Double

        public var expirationDate: String?

        public var currency: String

        public var priceTransfer: Double?

        public var set: InventorySet?

        public var priceEffective: Double

        public var storeCode: String

        public enum CodingKeys: String, CodingKey {
            case itemLength = "item_length"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case size

            case sellerIdentifier = "seller_identifier"

            case itemWeight = "item_weight"

            case isSet = "is_set"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case identifiers

            case itemWidth = "item_width"

            case itemHeight = "item_height"

            case quantity

            case price

            case expirationDate = "expiration_date"

            case currency

            case priceTransfer = "price_transfer"

            case set

            case priceEffective = "price_effective"

            case storeCode = "store_code"
        }

        public init(currency: String, expirationDate: String?, identifiers: [[String: Any]]?, isSet: Bool?, itemDimensionsUnitOfMeasure: String?, itemHeight: Double?, itemLength: Double?, itemWeight: Double?, itemWeightUnitOfMeasure: String?, itemWidth: Double?, price: Double, priceEffective: Double, priceTransfer: Double?, quantity: Int, sellerIdentifier: String, set: InventorySet?, size: String?, storeCode: String) {
            self.itemLength = itemLength

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.size = size

            self.sellerIdentifier = sellerIdentifier

            self.itemWeight = itemWeight

            self.isSet = isSet

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.identifiers = identifiers

            self.itemWidth = itemWidth

            self.itemHeight = itemHeight

            self.quantity = quantity

            self.price = price

            self.expirationDate = expirationDate

            self.currency = currency

            self.priceTransfer = priceTransfer

            self.set = set

            self.priceEffective = priceEffective

            self.storeCode = storeCode
        }

        public func duplicate() -> Size1 {
            let dict = self.dictionary!
            let copy = Size1(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

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
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

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

            price = try container.decode(Double.self, forKey: .price)

            do {
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

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
                set = try container.decode(InventorySet.self, forKey: .set)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            storeCode = try container.decode(String.self, forKey: .storeCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encode(size, forKey: .size)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encode(identifiers, forKey: .identifiers)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)
        }
    }
}
