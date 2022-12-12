

import Foundation
public extension PlatformClient {
    /*
         Model: ItemCriteria
         Used By: Cart
     */

    class ItemCriteria: Codable {
        public var itemId: [Int]?

        public var cartQuantity: CompareObject?

        public var availableZones: [String]?

        public var itemExcludeStore: [Int]?

        public var itemExcludeCategory: [Int]?

        public var itemExcludeBrand: [Int]?

        public var itemStore: [Int]?

        public var itemExcludeCompany: [Int]?

        public var itemCategory: [Int]?

        public var buyRules: [String]?

        public var itemExcludeSku: [String]?

        public var allItems: Bool?

        public var itemSize: [String]?

        public var itemBrand: [Int]?

        public var cartTotal: CompareObject?

        public var itemCompany: [Int]?

        public var itemSku: [String]?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case cartQuantity = "cart_quantity"

            case availableZones = "available_zones"

            case itemExcludeStore = "item_exclude_store"

            case itemExcludeCategory = "item_exclude_category"

            case itemExcludeBrand = "item_exclude_brand"

            case itemStore = "item_store"

            case itemExcludeCompany = "item_exclude_company"

            case itemCategory = "item_category"

            case buyRules = "buy_rules"

            case itemExcludeSku = "item_exclude_sku"

            case allItems = "all_items"

            case itemSize = "item_size"

            case itemBrand = "item_brand"

            case cartTotal = "cart_total"

            case itemCompany = "item_company"

            case itemSku = "item_sku"
        }

        public init(allItems: Bool? = nil, availableZones: [String]? = nil, buyRules: [String]? = nil, cartQuantity: CompareObject? = nil, cartTotal: CompareObject? = nil, itemBrand: [Int]? = nil, itemCategory: [Int]? = nil, itemCompany: [Int]? = nil, itemExcludeBrand: [Int]? = nil, itemExcludeCategory: [Int]? = nil, itemExcludeCompany: [Int]? = nil, itemExcludeSku: [String]? = nil, itemExcludeStore: [Int]? = nil, itemId: [Int]? = nil, itemSize: [String]? = nil, itemSku: [String]? = nil, itemStore: [Int]? = nil) {
            self.itemId = itemId

            self.cartQuantity = cartQuantity

            self.availableZones = availableZones

            self.itemExcludeStore = itemExcludeStore

            self.itemExcludeCategory = itemExcludeCategory

            self.itemExcludeBrand = itemExcludeBrand

            self.itemStore = itemStore

            self.itemExcludeCompany = itemExcludeCompany

            self.itemCategory = itemCategory

            self.buyRules = buyRules

            self.itemExcludeSku = itemExcludeSku

            self.allItems = allItems

            self.itemSize = itemSize

            self.itemBrand = itemBrand

            self.cartTotal = cartTotal

            self.itemCompany = itemCompany

            self.itemSku = itemSku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemId = try container.decode([Int].self, forKey: .itemId)

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
                availableZones = try container.decode([String].self, forKey: .availableZones)

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
                itemExcludeCategory = try container.decode([Int].self, forKey: .itemExcludeCategory)

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
                itemStore = try container.decode([Int].self, forKey: .itemStore)

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
                itemSize = try container.decode([String].self, forKey: .itemSize)

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
                cartTotal = try container.decode(CompareObject.self, forKey: .cartTotal)

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
                itemSku = try container.decode([String].self, forKey: .itemSku)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(cartQuantity, forKey: .cartQuantity)

            try? container.encodeIfPresent(availableZones, forKey: .availableZones)

            try? container.encodeIfPresent(itemExcludeStore, forKey: .itemExcludeStore)

            try? container.encodeIfPresent(itemExcludeCategory, forKey: .itemExcludeCategory)

            try? container.encodeIfPresent(itemExcludeBrand, forKey: .itemExcludeBrand)

            try? container.encodeIfPresent(itemStore, forKey: .itemStore)

            try? container.encodeIfPresent(itemExcludeCompany, forKey: .itemExcludeCompany)

            try? container.encodeIfPresent(itemCategory, forKey: .itemCategory)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(itemExcludeSku, forKey: .itemExcludeSku)

            try? container.encodeIfPresent(allItems, forKey: .allItems)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)

            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)

            try? container.encodeIfPresent(itemCompany, forKey: .itemCompany)

            try? container.encodeIfPresent(itemSku, forKey: .itemSku)
        }
    }
}
