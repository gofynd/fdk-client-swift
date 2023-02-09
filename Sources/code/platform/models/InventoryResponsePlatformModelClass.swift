

import Foundation
public extension PlatformClient {
    /*
         Model: InventoryResponse
         Used By: Catalog
     */

    class InventoryResponse: Codable {
        public var price: Double?

        public var sellableQuantity: Int?

        public var priceEffective: Double?

        public var uid: String?

        public var inventoryUpdatedOn: String?

        public var priceTransfer: Double?

        public var identifiers: [String: Any]?

        public var quantity: Int?

        public var currency: String?

        public var itemId: Int?

        public var sellerIdentifier: String?

        public var store: [String: Any]?

        public var size: String?

        public enum CodingKeys: String, CodingKey {
            case price

            case sellableQuantity = "sellable_quantity"

            case priceEffective = "price_effective"

            case uid

            case inventoryUpdatedOn = "inventory_updated_on"

            case priceTransfer = "price_transfer"

            case identifiers

            case quantity

            case currency

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case store

            case size
        }

        public init(currency: String? = nil, identifiers: [String: Any]? = nil, inventoryUpdatedOn: String? = nil, itemId: Int? = nil, price: Double? = nil, priceEffective: Double? = nil, priceTransfer: Double? = nil, quantity: Int? = nil, sellableQuantity: Int? = nil, sellerIdentifier: String? = nil, size: String? = nil, store: [String: Any]? = nil, uid: String? = nil) {
            self.price = price

            self.sellableQuantity = sellableQuantity

            self.priceEffective = priceEffective

            self.uid = uid

            self.inventoryUpdatedOn = inventoryUpdatedOn

            self.priceTransfer = priceTransfer

            self.identifiers = identifiers

            self.quantity = quantity

            self.currency = currency

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.store = store

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                price = try container.decode(Double.self, forKey: .price)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellableQuantity = try container.decode(Int.self, forKey: .sellableQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                inventoryUpdatedOn = try container.decode(String.self, forKey: .inventoryUpdatedOn)

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
                identifiers = try container.decode([String: Any].self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                store = try container.decode([String: Any].self, forKey: .store)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(price, forKey: .price)

            try? container.encodeIfPresent(sellableQuantity, forKey: .sellableQuantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(inventoryUpdatedOn, forKey: .inventoryUpdatedOn)

            try? container.encodeIfPresent(priceTransfer, forKey: .priceTransfer)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(store, forKey: .store)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
