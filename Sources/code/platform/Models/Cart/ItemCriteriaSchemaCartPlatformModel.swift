

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: ItemCriteriaSchema
         Used By: Cart
     */

    class ItemCriteriaSchema: Codable {
        public var allItems: Bool?

        public var itemExcludeBrand: [Int]?

        public var itemExcludeCompany: [Int]?

        public var itemCategory: [Int]?

        public var cartUniqueItemAmount: CompareObjectSchema?

        public var itemExcludeCategory: [Int]?

        public var productTags: [String]?

        public var itemCompany: [Int]?

        public var cartUniqueItemQuantity: CompareObjectSchema?

        public var buyRules: [String]?

        public var itemExcludeStore: [Int]?

        public var cartTotal: CompareObjectSchema?

        public var itemExcludeSku: [String]?

        public var cartQuantity: CompareObjectSchema?

        public var itemSize: [String]?

        public var itemSku: [String]?

        public var availableZones: [String]?

        public var itemStore: [Int]?

        public var itemBrand: [Int]?

        public var itemExcludeId: [Int]?

        public var itemId: [Int]?

        public enum CodingKeys: String, CodingKey {
            case allItems = "all_items"

            case itemExcludeBrand = "item_exclude_brand"

            case itemExcludeCompany = "item_exclude_company"

            case itemCategory = "item_category"

            case cartUniqueItemAmount = "cart_unique_item_amount"

            case itemExcludeCategory = "item_exclude_category"

            case productTags = "product_tags"

            case itemCompany = "item_company"

            case cartUniqueItemQuantity = "cart_unique_item_quantity"

            case buyRules = "buy_rules"

            case itemExcludeStore = "item_exclude_store"

            case cartTotal = "cart_total"

            case itemExcludeSku = "item_exclude_sku"

            case cartQuantity = "cart_quantity"

            case itemSize = "item_size"

            case itemSku = "item_sku"

            case availableZones = "available_zones"

            case itemStore = "item_store"

            case itemBrand = "item_brand"

            case itemExcludeId = "item_exclude_id"

            case itemId = "item_id"
        }

        public init(allItems: Bool? = nil, availableZones: [String]? = nil, buyRules: [String]? = nil, cartQuantity: CompareObjectSchema? = nil, cartTotal: CompareObjectSchema? = nil, cartUniqueItemAmount: CompareObjectSchema? = nil, cartUniqueItemQuantity: CompareObjectSchema? = nil, itemBrand: [Int]? = nil, itemCategory: [Int]? = nil, itemCompany: [Int]? = nil, itemExcludeBrand: [Int]? = nil, itemExcludeCategory: [Int]? = nil, itemExcludeCompany: [Int]? = nil, itemExcludeId: [Int]? = nil, itemExcludeSku: [String]? = nil, itemExcludeStore: [Int]? = nil, itemId: [Int]? = nil, itemSize: [String]? = nil, itemSku: [String]? = nil, itemStore: [Int]? = nil, productTags: [String]? = nil) {
            self.allItems = allItems

            self.itemExcludeBrand = itemExcludeBrand

            self.itemExcludeCompany = itemExcludeCompany

            self.itemCategory = itemCategory

            self.cartUniqueItemAmount = cartUniqueItemAmount

            self.itemExcludeCategory = itemExcludeCategory

            self.productTags = productTags

            self.itemCompany = itemCompany

            self.cartUniqueItemQuantity = cartUniqueItemQuantity

            self.buyRules = buyRules

            self.itemExcludeStore = itemExcludeStore

            self.cartTotal = cartTotal

            self.itemExcludeSku = itemExcludeSku

            self.cartQuantity = cartQuantity

            self.itemSize = itemSize

            self.itemSku = itemSku

            self.availableZones = availableZones

            self.itemStore = itemStore

            self.itemBrand = itemBrand

            self.itemExcludeId = itemExcludeId

            self.itemId = itemId
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
                itemExcludeBrand = try container.decode([Int].self, forKey: .itemExcludeBrand)

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
                cartUniqueItemAmount = try container.decode(CompareObjectSchema.self, forKey: .cartUniqueItemAmount)

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
                productTags = try container.decode([String].self, forKey: .productTags)

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
                cartUniqueItemQuantity = try container.decode(CompareObjectSchema.self, forKey: .cartUniqueItemQuantity)

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
                itemExcludeStore = try container.decode([Int].self, forKey: .itemExcludeStore)

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

            do {
                itemExcludeSku = try container.decode([String].self, forKey: .itemExcludeSku)

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
                itemBrand = try container.decode([Int].self, forKey: .itemBrand)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(allItems, forKey: .allItems)

            try? container.encodeIfPresent(itemExcludeBrand, forKey: .itemExcludeBrand)

            try? container.encodeIfPresent(itemExcludeCompany, forKey: .itemExcludeCompany)

            try? container.encodeIfPresent(itemCategory, forKey: .itemCategory)

            try? container.encodeIfPresent(cartUniqueItemAmount, forKey: .cartUniqueItemAmount)

            try? container.encodeIfPresent(itemExcludeCategory, forKey: .itemExcludeCategory)

            try? container.encodeIfPresent(productTags, forKey: .productTags)

            try? container.encodeIfPresent(itemCompany, forKey: .itemCompany)

            try? container.encodeIfPresent(cartUniqueItemQuantity, forKey: .cartUniqueItemQuantity)

            try? container.encodeIfPresent(buyRules, forKey: .buyRules)

            try? container.encodeIfPresent(itemExcludeStore, forKey: .itemExcludeStore)

            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)

            try? container.encodeIfPresent(itemExcludeSku, forKey: .itemExcludeSku)

            try? container.encodeIfPresent(cartQuantity, forKey: .cartQuantity)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(itemSku, forKey: .itemSku)

            try? container.encodeIfPresent(availableZones, forKey: .availableZones)

            try? container.encodeIfPresent(itemStore, forKey: .itemStore)

            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)

            try? container.encodeIfPresent(itemExcludeId, forKey: .itemExcludeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)
        }
    }
}
