

import Foundation
public extension PlatformClient {
    /*
         Model: ItemCriteria
         Used By: Cart
     */

    class ItemCriteria: Codable {
        public var itemExcludeSku: [String]?

        public var allItems: Bool?

        public var itemId: [Int]?

        public var itemStore: [Int]?

        public var cartQuantity: CompareObject?

        public var itemBrand: [Int]?

        public var itemCompany: [Int]?

        public var itemExcludeStore: [Int]?

        public var cartTotal: CompareObject?

        public var itemExcludeCompany: [Int]?

        public var itemExcludeBrand: [Int]?

        public var itemCategory: [Int]?

        public var buyRules: [String]?

        public var itemExcludeCategory: [Int]?

        public var itemSize: [String]?

        public var itemSku: [String]?

        public enum CodingKeys: String, CodingKey {
            case itemExcludeSku = "item_exclude_sku"

            case allItems = "all_items"

            case itemId = "item_id"

            case itemStore = "item_store"

            case cartQuantity = "cart_quantity"

            case itemBrand = "item_brand"

            case itemCompany = "item_company"

            case itemExcludeStore = "item_exclude_store"

            case cartTotal = "cart_total"

            case itemExcludeCompany = "item_exclude_company"

            case itemExcludeBrand = "item_exclude_brand"

            case itemCategory = "item_category"

            case buyRules = "buy_rules"

            case itemExcludeCategory = "item_exclude_category"

            case itemSize = "item_size"

            case itemSku = "item_sku"
        }

        public init(allItems: Bool? = nil, buyRules: [String]? = nil, cartQuantity: CompareObject? = nil, cartTotal: CompareObject? = nil, itemBrand: [Int]? = nil, itemCategory: [Int]? = nil, itemCompany: [Int]? = nil, itemExcludeBrand: [Int]? = nil, itemExcludeCategory: [Int]? = nil, itemExcludeCompany: [Int]? = nil, itemExcludeSku: [String]? = nil, itemExcludeStore: [Int]? = nil, itemId: [Int]? = nil, itemSize: [String]? = nil, itemSku: [String]? = nil, itemStore: [Int]? = nil) {
            self.itemExcludeSku = itemExcludeSku

            self.allItems = allItems

            self.itemId = itemId

            self.itemStore = itemStore

            self.cartQuantity = cartQuantity

            self.itemBrand = itemBrand

            self.itemCompany = itemCompany

            self.itemExcludeStore = itemExcludeStore

            self.cartTotal = cartTotal

            self.itemExcludeCompany = itemExcludeCompany

            self.itemExcludeBrand = itemExcludeBrand

            self.itemCategory = itemCategory

            self.buyRules = buyRules

            self.itemExcludeCategory = itemExcludeCategory

            self.itemSize = itemSize

            self.itemSku = itemSku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemExcludeSku = try container.decode([String].self, forKey: .itemExcludeSku)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                allItems = try container.decode(Bool.self, forKey: .allItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemId = try container.decode([Int].self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemStore = try container.decode([Int].self, forKey: .itemStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartQuantity = try container.decode(CompareObject.self, forKey: .cartQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemBrand = try container.decode([Int].self, forKey: .itemBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCompany = try container.decode([Int].self, forKey: .itemCompany)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeStore = try container.decode([Int].self, forKey: .itemExcludeStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartTotal = try container.decode(CompareObject.self, forKey: .cartTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeCompany = try container.decode([Int].self, forKey: .itemExcludeCompany)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeBrand = try container.decode([Int].self, forKey: .itemExcludeBrand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemCategory = try container.decode([Int].self, forKey: .itemCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buyRules = try container.decode([String].self, forKey: .buyRules)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeCategory = try container.decode([Int].self, forKey: .itemExcludeCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemSize = try container.decode([String].self, forKey: .itemSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemSku = try container.decode([String].self, forKey: .itemSku)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemExcludeSku, forKey: .itemExcludeSku)

            try? container.encodeIfPresent(allItems, forKey: .allItems)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemStore, forKey: .itemStore)

            try? container.encodeIfPresent(cartQuantity, forKey: .cartQuantity)

            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)

            try? container.encodeIfPresent(itemCompany, forKey: .itemCompany)

            try? container.encodeIfPresent(itemExcludeStore, forKey: .itemExcludeStore)

            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)

            try? container.encodeIfPresent(itemExcludeCompany, forKey: .itemExcludeCompany)

            try? container.encodeIfPresent(itemExcludeBrand, forKey: .itemExcludeBrand)

            try? container.encodeIfPresent(itemCategory, forKey: .itemCategory)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(itemExcludeCategory, forKey: .itemExcludeCategory)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemSku, forKey: .itemSku)
        }
    }
}
