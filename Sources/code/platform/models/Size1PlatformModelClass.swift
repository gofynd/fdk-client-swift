

import Foundation
public extension PlatformClient {
    /*
         Model: Size1
         Used By: Catalog
     */

    class Size1: Codable {
        public var itemLength: Double?

        public var priceEffective: Double

        public var itemDimensionsUnitOfMeasure: String?

        public var storeCode: String

        public var priceTransfer: Double?

        public var price: Double

        public var size: String?

        public var currency: String

        public var set: InventorySet?

        public var expirationDate: String?

        public var sellerIdentifier: String

        public var itemHeight: Double?

        public var itemWeightUnitOfMeasure: String?

        public var identifiers: [[String: Any]]?

        public var itemWeight: Double?

        public var isSet: Bool?

        public var quantity: Int

        public var itemWidth: Double?

        public enum CodingKeys: String, CodingKey {
            case itemLength = "item_length"

            case priceEffective = "price_effective"

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case storeCode = "store_code"

            case priceTransfer = "price_transfer"

            case price

            case size

            case currency

            case set

            case expirationDate = "expiration_date"

            case sellerIdentifier = "seller_identifier"

            case itemHeight = "item_height"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case identifiers

            case itemWeight = "item_weight"

            case isSet = "is_set"

            case quantity

            case itemWidth = "item_width"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [[String: Any]]? = nil, isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, sellerIdentifier: String, set: InventorySet? = nil, size: String? = nil, storeCode: String) {
            self.itemLength = itemLength

            self.priceEffective = priceEffective

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.storeCode = storeCode

            self.priceTransfer = priceTransfer

            self.price = price

            self.size = size

            self.currency = currency

            self.set = set

            self.expirationDate = expirationDate

            self.sellerIdentifier = sellerIdentifier

            self.itemHeight = itemHeight

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.identifiers = identifiers

            self.itemWeight = itemWeight

            self.isSet = isSet

            self.quantity = quantity

            self.itemWidth = itemWidth
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemLength = try container.decode(Double.self, forKey: .itemLength)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                itemDimensionsUnitOfMeasure = try container.decode(String.self, forKey: .itemDimensionsUnitOfMeasure)

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

            price = try container.decode(Double.self, forKey: .price)

            do {
                size = try container.decode(String.self, forKey: .size)

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
                expirationDate = try container.decode(String.self, forKey: .expirationDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            do {
                identifiers = try container.decode([[String: Any]].self, forKey: .identifiers)

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

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                itemWidth = try container.decode(Double.self, forKey: .itemWidth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encode(size, forKey: .size)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encode(identifiers, forKey: .identifiers)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(itemWidth, forKey: .itemWidth)
        }
    }
}
