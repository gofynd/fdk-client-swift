

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: ItemCriteria
         Used By: Cart
     */

    class ItemCriteria: Codable {
        public var itemStore: [Int]?

        public var itemExcludeL2Category: [Int]?

        public var itemExcludeDepartment: [Int]?

        public var allItems: Bool?

        public var itemExcludeCompany: [Int]?

        public var itemL2Category: [Int]?

        public var buyRules: [String]?

        public var itemId: [Int]?

        public var itemCompany: [Int]?

        public var itemSize: [String]?

        public var itemExcludeStore: [Int]?

        public var itemExcludeBrand: [Int]?

        public var cartTotal: CompareObject?

        public var itemL1Category: [Int]?

        public var itemBrand: [Int]?

        public var itemSku: [String]?

        public var itemTags: [String]?

        public var cartUniqueItemQuantity: CompareObject?

        public var cartUniqueItemAmount: CompareObject?

        public var itemCategory: [Int]?

        public var cartQuantity: CompareObject?

        public var itemDepartment: [Int]?

        public var itemExcludeL1Category: [Int]?

        public var itemExcludeId: [Int]?

        public var availableZones: [String]?

        public var itemExcludeCategory: [Int]?

        public var itemExcludeSku: [String]?

        public enum CodingKeys: String, CodingKey {
            case itemStore = "item_store"

            case itemExcludeL2Category = "item_exclude_l2_category"

            case itemExcludeDepartment = "item_exclude_department"

            case allItems = "all_items"

            case itemExcludeCompany = "item_exclude_company"

            case itemL2Category = "item_l2_category"

            case buyRules = "buy_rules"

            case itemId = "item_id"

            case itemCompany = "item_company"

            case itemSize = "item_size"

            case itemExcludeStore = "item_exclude_store"

            case itemExcludeBrand = "item_exclude_brand"

            case cartTotal = "cart_total"

            case itemL1Category = "item_l1_category"

            case itemBrand = "item_brand"

            case itemSku = "item_sku"

            case itemTags = "item_tags"

            case cartUniqueItemQuantity = "cart_unique_item_quantity"

            case cartUniqueItemAmount = "cart_unique_item_amount"

            case itemCategory = "item_category"

            case cartQuantity = "cart_quantity"

            case itemDepartment = "item_department"

            case itemExcludeL1Category = "item_exclude_l1_category"

            case itemExcludeId = "item_exclude_id"

            case availableZones = "available_zones"

            case itemExcludeCategory = "item_exclude_category"

            case itemExcludeSku = "item_exclude_sku"
        }

        public init(allItems: Bool? = nil, availableZones: [String]? = nil, buyRules: [String]? = nil, cartQuantity: CompareObject? = nil, cartTotal: CompareObject? = nil, cartUniqueItemAmount: CompareObject? = nil, cartUniqueItemQuantity: CompareObject? = nil, itemBrand: [Int]? = nil, itemCategory: [Int]? = nil, itemCompany: [Int]? = nil, itemDepartment: [Int]? = nil, itemExcludeBrand: [Int]? = nil, itemExcludeCategory: [Int]? = nil, itemExcludeCompany: [Int]? = nil, itemExcludeDepartment: [Int]? = nil, itemExcludeId: [Int]? = nil, itemExcludeL1Category: [Int]? = nil, itemExcludeL2Category: [Int]? = nil, itemExcludeSku: [String]? = nil, itemExcludeStore: [Int]? = nil, itemId: [Int]? = nil, itemL1Category: [Int]? = nil, itemL2Category: [Int]? = nil, itemSize: [String]? = nil, itemSku: [String]? = nil, itemStore: [Int]? = nil, itemTags: [String]? = nil) {
            self.itemStore = itemStore

            self.itemExcludeL2Category = itemExcludeL2Category

            self.itemExcludeDepartment = itemExcludeDepartment

            self.allItems = allItems

            self.itemExcludeCompany = itemExcludeCompany

            self.itemL2Category = itemL2Category

            self.buyRules = buyRules

            self.itemId = itemId

            self.itemCompany = itemCompany

            self.itemSize = itemSize

            self.itemExcludeStore = itemExcludeStore

            self.itemExcludeBrand = itemExcludeBrand

            self.cartTotal = cartTotal

            self.itemL1Category = itemL1Category

            self.itemBrand = itemBrand

            self.itemSku = itemSku

            self.itemTags = itemTags

            self.cartUniqueItemQuantity = cartUniqueItemQuantity

            self.cartUniqueItemAmount = cartUniqueItemAmount

            self.itemCategory = itemCategory

            self.cartQuantity = cartQuantity

            self.itemDepartment = itemDepartment

            self.itemExcludeL1Category = itemExcludeL1Category

            self.itemExcludeId = itemExcludeId

            self.availableZones = availableZones

            self.itemExcludeCategory = itemExcludeCategory

            self.itemExcludeSku = itemExcludeSku
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemStore = try container.decode([Int].self, forKey: .itemStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeL2Category = try container.decode([Int].self, forKey: .itemExcludeL2Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeDepartment = try container.decode([Int].self, forKey: .itemExcludeDepartment)

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
                itemExcludeCompany = try container.decode([Int].self, forKey: .itemExcludeCompany)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemL2Category = try container.decode([Int].self, forKey: .itemL2Category)

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
                itemId = try container.decode([Int].self, forKey: .itemId)

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
                itemSize = try container.decode([String].self, forKey: .itemSize)

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
                itemExcludeBrand = try container.decode([Int].self, forKey: .itemExcludeBrand)

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
                itemL1Category = try container.decode([Int].self, forKey: .itemL1Category)

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
                itemSku = try container.decode([String].self, forKey: .itemSku)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemTags = try container.decode([String].self, forKey: .itemTags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartUniqueItemQuantity = try container.decode(CompareObject.self, forKey: .cartUniqueItemQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartUniqueItemAmount = try container.decode(CompareObject.self, forKey: .cartUniqueItemAmount)

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
                cartQuantity = try container.decode(CompareObject.self, forKey: .cartQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemDepartment = try container.decode([Int].self, forKey: .itemDepartment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeL1Category = try container.decode([Int].self, forKey: .itemExcludeL1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemExcludeId = try container.decode([Int].self, forKey: .itemExcludeId)

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
                itemExcludeCategory = try container.decode([Int].self, forKey: .itemExcludeCategory)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemStore, forKey: .itemStore)

            try? container.encodeIfPresent(itemExcludeL2Category, forKey: .itemExcludeL2Category)

            try? container.encodeIfPresent(itemExcludeDepartment, forKey: .itemExcludeDepartment)

            try? container.encodeIfPresent(allItems, forKey: .allItems)

            try? container.encodeIfPresent(itemExcludeCompany, forKey: .itemExcludeCompany)

            try? container.encodeIfPresent(itemL2Category, forKey: .itemL2Category)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemCompany, forKey: .itemCompany)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemExcludeStore, forKey: .itemExcludeStore)

            try? container.encodeIfPresent(itemExcludeBrand, forKey: .itemExcludeBrand)

            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)

            try? container.encodeIfPresent(itemL1Category, forKey: .itemL1Category)

            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)

            try? container.encodeIfPresent(itemSku, forKey: .itemSku)

            try? container.encodeIfPresent(itemTags, forKey: .itemTags)

            try? container.encodeIfPresent(cartUniqueItemQuantity, forKey: .cartUniqueItemQuantity)

            try? container.encodeIfPresent(cartUniqueItemAmount, forKey: .cartUniqueItemAmount)

            try? container.encodeIfPresent(itemCategory, forKey: .itemCategory)

            try? container.encodeIfPresent(cartQuantity, forKey: .cartQuantity)

            try? container.encodeIfPresent(itemDepartment, forKey: .itemDepartment)

            try? container.encodeIfPresent(itemExcludeL1Category, forKey: .itemExcludeL1Category)

            try? container.encodeIfPresent(itemExcludeId, forKey: .itemExcludeId)

            try? container.encodeIfPresent(availableZones, forKey: .availableZones)

            try? container.encodeIfPresent(itemExcludeCategory, forKey: .itemExcludeCategory)

            try? container.encodeIfPresent(itemExcludeSku, forKey: .itemExcludeSku)
        }
    }
}
