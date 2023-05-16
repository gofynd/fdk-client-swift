

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: ItemCriteriaSchema
         Used By: Cart
     */

    class ItemCriteriaSchema: Codable {
        public var allItems: Bool?

        public var productTags: [String]?

        public var itemExcludeL2Category: [Int]?

        public var itemDepartment: [Int]?

        public var itemExcludeCategory: [Int]?

        public var itemCategory: [Int]?

        public var availableZones: [String]?

        public var itemStore: [Int]?

        public var itemExcludeBrand: [Int]?

        public var itemTags: [String]?

        public var itemL2Category: [Int]?

        public var itemExcludeL1Category: [Int]?

        public var itemExcludeStore: [Int]?

        public var itemSize: [String]?

        public var itemExcludeId: [Int]?

        public var itemId: [Int]?

        public var cartUniqueItemQuantity: CompareObjectSchema?

        public var cartUniqueItemAmount: CompareObjectSchema?

        public var itemCompany: [Int]?

        public var itemExcludeCompany: [Int]?

        public var buyRules: [String]?

        public var itemExcludeDepartment: [Int]?

        public var cartQuantity: CompareObjectSchema?

        public var itemBrand: [Int]?

        public var itemSku: [String]?

        public var itemL1Category: [Int]?

        public var itemExcludeSku: [String]?

        public var cartTotal: CompareObjectSchema?

        public enum CodingKeys: String, CodingKey {
            case allItems = "all_items"

            case productTags = "product_tags"

            case itemExcludeL2Category = "item_exclude_l2_category"

            case itemDepartment = "item_department"

            case itemExcludeCategory = "item_exclude_category"

            case itemCategory = "item_category"

            case availableZones = "available_zones"

            case itemStore = "item_store"

            case itemExcludeBrand = "item_exclude_brand"

            case itemTags = "item_tags"

            case itemL2Category = "item_l2_category"

            case itemExcludeL1Category = "item_exclude_l1_category"

            case itemExcludeStore = "item_exclude_store"

            case itemSize = "item_size"

            case itemExcludeId = "item_exclude_id"

            case itemId = "item_id"

            case cartUniqueItemQuantity = "cart_unique_item_quantity"

            case cartUniqueItemAmount = "cart_unique_item_amount"

            case itemCompany = "item_company"

            case itemExcludeCompany = "item_exclude_company"

            case buyRules = "buy_rules"

            case itemExcludeDepartment = "item_exclude_department"

            case cartQuantity = "cart_quantity"

            case itemBrand = "item_brand"

            case itemSku = "item_sku"

            case itemL1Category = "item_l1_category"

            case itemExcludeSku = "item_exclude_sku"

            case cartTotal = "cart_total"
        }

        public init(allItems: Bool? = nil, availableZones: [String]? = nil, buyRules: [String]? = nil, cartQuantity: CompareObjectSchema? = nil, cartTotal: CompareObjectSchema? = nil, cartUniqueItemAmount: CompareObjectSchema? = nil, cartUniqueItemQuantity: CompareObjectSchema? = nil, itemBrand: [Int]? = nil, itemCategory: [Int]? = nil, itemCompany: [Int]? = nil, itemDepartment: [Int]? = nil, itemExcludeBrand: [Int]? = nil, itemExcludeCategory: [Int]? = nil, itemExcludeCompany: [Int]? = nil, itemExcludeDepartment: [Int]? = nil, itemExcludeId: [Int]? = nil, itemExcludeL1Category: [Int]? = nil, itemExcludeL2Category: [Int]? = nil, itemExcludeSku: [String]? = nil, itemExcludeStore: [Int]? = nil, itemId: [Int]? = nil, itemL1Category: [Int]? = nil, itemL2Category: [Int]? = nil, itemSize: [String]? = nil, itemSku: [String]? = nil, itemStore: [Int]? = nil, itemTags: [String]? = nil, productTags: [String]? = nil) {
            self.allItems = allItems

            self.productTags = productTags

            self.itemExcludeL2Category = itemExcludeL2Category

            self.itemDepartment = itemDepartment

            self.itemExcludeCategory = itemExcludeCategory

            self.itemCategory = itemCategory

            self.availableZones = availableZones

            self.itemStore = itemStore

            self.itemExcludeBrand = itemExcludeBrand

            self.itemTags = itemTags

            self.itemL2Category = itemL2Category

            self.itemExcludeL1Category = itemExcludeL1Category

            self.itemExcludeStore = itemExcludeStore

            self.itemSize = itemSize

            self.itemExcludeId = itemExcludeId

            self.itemId = itemId

            self.cartUniqueItemQuantity = cartUniqueItemQuantity

            self.cartUniqueItemAmount = cartUniqueItemAmount

            self.itemCompany = itemCompany

            self.itemExcludeCompany = itemExcludeCompany

            self.buyRules = buyRules

            self.itemExcludeDepartment = itemExcludeDepartment

            self.cartQuantity = cartQuantity

            self.itemBrand = itemBrand

            self.itemSku = itemSku

            self.itemL1Category = itemL1Category

            self.itemExcludeSku = itemExcludeSku

            self.cartTotal = cartTotal
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                allItems = try container.decode(Bool.self, forKey: .allItems)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                productTags = try container.decode([String].self, forKey: .productTags)

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
                itemDepartment = try container.decode([Int].self, forKey: .itemDepartment)

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
                itemCategory = try container.decode([Int].self, forKey: .itemCategory)

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
                itemStore = try container.decode([Int].self, forKey: .itemStore)

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
                itemTags = try container.decode([String].self, forKey: .itemTags)

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
                itemExcludeL1Category = try container.decode([Int].self, forKey: .itemExcludeL1Category)

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
                itemSize = try container.decode([String].self, forKey: .itemSize)

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
                itemId = try container.decode([Int].self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartUniqueItemQuantity = try container.decode(CompareObjectSchema.self, forKey: .cartUniqueItemQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartUniqueItemAmount = try container.decode(CompareObjectSchema.self, forKey: .cartUniqueItemAmount)

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
                itemExcludeCompany = try container.decode([Int].self, forKey: .itemExcludeCompany)

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
                itemExcludeDepartment = try container.decode([Int].self, forKey: .itemExcludeDepartment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cartQuantity = try container.decode(CompareObjectSchema.self, forKey: .cartQuantity)

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
                itemL1Category = try container.decode([Int].self, forKey: .itemL1Category)

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
                cartTotal = try container.decode(CompareObjectSchema.self, forKey: .cartTotal)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allItems, forKey: .allItems)

            try? container.encodeIfPresent(productTags, forKey: .productTags)

            try? container.encodeIfPresent(itemExcludeL2Category, forKey: .itemExcludeL2Category)

            try? container.encodeIfPresent(itemDepartment, forKey: .itemDepartment)

            try? container.encodeIfPresent(itemExcludeCategory, forKey: .itemExcludeCategory)

            try? container.encodeIfPresent(itemCategory, forKey: .itemCategory)

            try? container.encodeIfPresent(availableZones, forKey: .availableZones)

            try? container.encodeIfPresent(itemStore, forKey: .itemStore)

            try? container.encodeIfPresent(itemExcludeBrand, forKey: .itemExcludeBrand)

            try? container.encodeIfPresent(itemTags, forKey: .itemTags)

            try? container.encodeIfPresent(itemL2Category, forKey: .itemL2Category)

            try? container.encodeIfPresent(itemExcludeL1Category, forKey: .itemExcludeL1Category)

            try? container.encodeIfPresent(itemExcludeStore, forKey: .itemExcludeStore)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemExcludeId, forKey: .itemExcludeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(cartUniqueItemQuantity, forKey: .cartUniqueItemQuantity)

            try? container.encodeIfPresent(cartUniqueItemAmount, forKey: .cartUniqueItemAmount)

            try? container.encodeIfPresent(itemCompany, forKey: .itemCompany)

            try? container.encodeIfPresent(itemExcludeCompany, forKey: .itemExcludeCompany)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(itemExcludeDepartment, forKey: .itemExcludeDepartment)

            try? container.encodeIfPresent(cartQuantity, forKey: .cartQuantity)

            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)

            try? container.encodeIfPresent(itemSku, forKey: .itemSku)

            try? container.encodeIfPresent(itemL1Category, forKey: .itemL1Category)

            try? container.encodeIfPresent(itemExcludeSku, forKey: .itemExcludeSku)

            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)
        }
    }
}
