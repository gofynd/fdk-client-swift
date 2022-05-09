

import Foundation
public extension PlatformClient {
    /*
         Model: Size1
         Used By: Catalog
     */

    class Size1: Codable {
        public var storeCode: String

        public var price: Double

        public var currency: String

        public var priceEffective: Double

        public var size: String?

        public var itemDimensionsUnitOfMeasure: String?

        public var identifiers: [[String: Any]]?

        public var itemWeight: Double?

        public var sellerIdentifier: String

        public var isSet: Bool?

        public var itemHeight: Double?

        public var itemLength: Double?

        public var itemWeightUnitOfMeasure: String?

        public var quantity: Int

        public var priceTransfer: Double?

        public var itemWidth: Double?

        public var set: InventorySet?

        public var expirationDate: String?

        public enum CodingKeys: String, CodingKey {
            case storeCode = "store_code"

            case price

            case currency

            case priceEffective = "price_effective"

            case size

            case itemDimensionsUnitOfMeasure = "item_dimensions_unit_of_measure"

            case identifiers

            case itemWeight = "item_weight"

            case sellerIdentifier = "seller_identifier"

            case isSet = "is_set"

            case itemHeight = "item_height"

            case itemLength = "item_length"

            case itemWeightUnitOfMeasure = "item_weight_unit_of_measure"

            case quantity

            case priceTransfer = "price_transfer"

            case itemWidth = "item_width"

            case set

            case expirationDate = "expiration_date"
        }

        public init(currency: String, expirationDate: String? = nil, identifiers: [[String: Any]]? = nil, isSet: Bool? = nil, itemDimensionsUnitOfMeasure: String? = nil, itemHeight: Double? = nil, itemLength: Double? = nil, itemWeight: Double? = nil, itemWeightUnitOfMeasure: String? = nil, itemWidth: Double? = nil, price: Double, priceEffective: Double, priceTransfer: Double? = nil, quantity: Int, sellerIdentifier: String, set: InventorySet? = nil, size: String? = nil, storeCode: String) {
            self.storeCode = storeCode

            self.price = price

            self.currency = currency

            self.priceEffective = priceEffective

            self.size = size

            self.itemDimensionsUnitOfMeasure = itemDimensionsUnitOfMeasure

            self.identifiers = identifiers

            self.itemWeight = itemWeight

            self.sellerIdentifier = sellerIdentifier

            self.isSet = isSet

            self.itemHeight = itemHeight

            self.itemLength = itemLength

            self.itemWeightUnitOfMeasure = itemWeightUnitOfMeasure

            self.quantity = quantity

            self.priceTransfer = priceTransfer

            self.itemWidth = itemWidth

            self.set = set

            self.expirationDate = expirationDate
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeCode = try container.decode(String.self, forKey: .storeCode)

            price = try container.decode(Double.self, forKey: .price)

            currency = try container.decode(String.self, forKey: .currency)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                size = try container.decode(String.self, forKey: .size)

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
                itemWeight = try container.decode(Double.self, forKey: .itemWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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

            quantity = try container.decode(Int.self, forKey: .quantity)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeCode, forKey: .storeCode)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encode(size, forKey: .size)

            try? container.encode(itemDimensionsUnitOfMeasure, forKey: .itemDimensionsUnitOfMeasure)

            try? container.encode(identifiers, forKey: .identifiers)

            try? container.encode(itemWeight, forKey: .itemWeight)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(isSet, forKey: .isSet)

            try? container.encode(itemHeight, forKey: .itemHeight)

            try? container.encode(itemLength, forKey: .itemLength)

            try? container.encode(itemWeightUnitOfMeasure, forKey: .itemWeightUnitOfMeasure)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encode(priceTransfer, forKey: .priceTransfer)

            try? container.encode(itemWidth, forKey: .itemWidth)

            try? container.encodeIfPresent(set, forKey: .set)

            try? container.encodeIfPresent(expirationDate, forKey: .expirationDate)
        }
    }
}
