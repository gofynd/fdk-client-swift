

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: PromoBuyRuleCartConditions
        Used By: Cart
    */
    class PromoBuyRuleCartConditions: Codable {
        
        public var cartQuantity: PromoBuyRuleCompareFieldsTypes?
        
        public var cartTotal: PromoBuyRuleCompareFieldsTypes?
        
        public var itemId: [Double]?
        
        public var itemStore: [Double]?
        
        public var itemCompany: [Double]?
        
        public var itemBrand: [Double]?
        
        public var itemExcludeBrand: [Double]?
        
        public var itemCategory: [Double]?
        
        public var itemExcludeCategory: [Double]?
        
        public var itemL1Category: [Double]?
        
        public var itemExcludeL1Category: [Double]?
        
        public var itemL2Category: [Double]?
        
        public var itemExcludeL2Category: [Double]?
        
        public var itemDepartment: [Double]?
        
        public var itemExcludeId: [Double]?
        
        public var availableZones: [Double]?
        
        public var productTags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case cartQuantity = "cart_quantity"
            
            case cartTotal = "cart_total"
            
            case itemId = "item_id"
            
            case itemStore = "item_store"
            
            case itemCompany = "item_company"
            
            case itemBrand = "item_brand"
            
            case itemExcludeBrand = "item_exclude_brand"
            
            case itemCategory = "item_category"
            
            case itemExcludeCategory = "item_exclude_category"
            
            case itemL1Category = "item_l1_category"
            
            case itemExcludeL1Category = "item_exclude_l1_category"
            
            case itemL2Category = "item_l2_category"
            
            case itemExcludeL2Category = "item_exclude_l2_category"
            
            case itemDepartment = "item_department"
            
            case itemExcludeId = "item_exclude_id"
            
            case availableZones = "available_zones"
            
            case productTags = "product_tags"
            
        }

        public init(availableZones: [Double]? = nil, cartQuantity: PromoBuyRuleCompareFieldsTypes? = nil, cartTotal: PromoBuyRuleCompareFieldsTypes? = nil, itemBrand: [Double]? = nil, itemCategory: [Double]? = nil, itemCompany: [Double]? = nil, itemDepartment: [Double]? = nil, itemExcludeBrand: [Double]? = nil, itemExcludeCategory: [Double]? = nil, itemExcludeId: [Double]? = nil, itemExcludeL1Category: [Double]? = nil, itemExcludeL2Category: [Double]? = nil, itemId: [Double]? = nil, itemL1Category: [Double]? = nil, itemL2Category: [Double]? = nil, itemStore: [Double]? = nil, productTags: [String]? = nil) {
            
            self.cartQuantity = cartQuantity
            
            self.cartTotal = cartTotal
            
            self.itemId = itemId
            
            self.itemStore = itemStore
            
            self.itemCompany = itemCompany
            
            self.itemBrand = itemBrand
            
            self.itemExcludeBrand = itemExcludeBrand
            
            self.itemCategory = itemCategory
            
            self.itemExcludeCategory = itemExcludeCategory
            
            self.itemL1Category = itemL1Category
            
            self.itemExcludeL1Category = itemExcludeL1Category
            
            self.itemL2Category = itemL2Category
            
            self.itemExcludeL2Category = itemExcludeL2Category
            
            self.itemDepartment = itemDepartment
            
            self.itemExcludeId = itemExcludeId
            
            self.availableZones = availableZones
            
            self.productTags = productTags
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                cartQuantity = try container.decode(PromoBuyRuleCompareFieldsTypes.self, forKey: .cartQuantity)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                cartTotal = try container.decode(PromoBuyRuleCompareFieldsTypes.self, forKey: .cartTotal)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemId = try container.decode([Double].self, forKey: .itemId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemStore = try container.decode([Double].self, forKey: .itemStore)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemCompany = try container.decode([Double].self, forKey: .itemCompany)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemBrand = try container.decode([Double].self, forKey: .itemBrand)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemExcludeBrand = try container.decode([Double].self, forKey: .itemExcludeBrand)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemCategory = try container.decode([Double].self, forKey: .itemCategory)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemExcludeCategory = try container.decode([Double].self, forKey: .itemExcludeCategory)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemL1Category = try container.decode([Double].self, forKey: .itemL1Category)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemExcludeL1Category = try container.decode([Double].self, forKey: .itemExcludeL1Category)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemL2Category = try container.decode([Double].self, forKey: .itemL2Category)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemExcludeL2Category = try container.decode([Double].self, forKey: .itemExcludeL2Category)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemDepartment = try container.decode([Double].self, forKey: .itemDepartment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemExcludeId = try container.decode([Double].self, forKey: .itemExcludeId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                availableZones = try container.decode([Double].self, forKey: .availableZones)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                productTags = try container.decode([String].self, forKey: .productTags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(cartQuantity, forKey: .cartQuantity)
            
            
            
            try? container.encodeIfPresent(cartTotal, forKey: .cartTotal)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(itemStore, forKey: .itemStore)
            
            
            
            try? container.encodeIfPresent(itemCompany, forKey: .itemCompany)
            
            
            
            try? container.encodeIfPresent(itemBrand, forKey: .itemBrand)
            
            
            
            try? container.encodeIfPresent(itemExcludeBrand, forKey: .itemExcludeBrand)
            
            
            
            try? container.encodeIfPresent(itemCategory, forKey: .itemCategory)
            
            
            
            try? container.encodeIfPresent(itemExcludeCategory, forKey: .itemExcludeCategory)
            
            
            
            try? container.encodeIfPresent(itemL1Category, forKey: .itemL1Category)
            
            
            
            try? container.encodeIfPresent(itemExcludeL1Category, forKey: .itemExcludeL1Category)
            
            
            
            try? container.encodeIfPresent(itemL2Category, forKey: .itemL2Category)
            
            
            
            try? container.encodeIfPresent(itemExcludeL2Category, forKey: .itemExcludeL2Category)
            
            
            
            try? container.encodeIfPresent(itemDepartment, forKey: .itemDepartment)
            
            
            
            try? container.encodeIfPresent(itemExcludeId, forKey: .itemExcludeId)
            
            
            
            try? container.encodeIfPresent(availableZones, forKey: .availableZones)
            
            
            
            try? container.encodeIfPresent(productTags, forKey: .productTags)
            
            
        }
        
    }
}
