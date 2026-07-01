

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: DiscountItemCriteria
        Used By: Cart
    */
    class DiscountItemCriteria: Codable {
        
        public var itemStore: [Int]?
        
        public var itemCompany: [Int]?
        
        public var itemBrand: [Int]?
        
        public var itemExcludeBrand: [Int]?
        
        public var itemCategory: [Int]?
        
        public var itemExcludeCategory: [Int]?
        
        public var itemL1Category: [Int]?
        
        public var itemExcludeL1Category: [Int]?
        
        public var itemL2Category: [Int]?
        
        public var itemExcludeL2Category: [Int]?
        
        public var itemDepartment: [Int]?
        
        public var itemExcludeDepartment: [Int]?
        
        public var itemId: [Int]?
        
        public var itemExcludeId: [Int]?
        
        public var buyRules: [String]?
        
        public var availableZones: [String]?
        
        public var productTags: [String]?
        
        public var allItems: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
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
            
            case itemExcludeDepartment = "item_exclude_department"
            
            case itemId = "item_id"
            
            case itemExcludeId = "item_exclude_id"
            
            case buyRules = "buy_rules"
            
            case availableZones = "available_zones"
            
            case productTags = "product_tags"
            
            case allItems = "all_items"
            
        }

        public init(allItems: Bool? = nil, availableZones: [String]? = nil, buyRules: [String]? = nil, itemBrand: [Int]? = nil, itemCategory: [Int]? = nil, itemCompany: [Int]? = nil, itemDepartment: [Int]? = nil, itemExcludeBrand: [Int]? = nil, itemExcludeCategory: [Int]? = nil, itemExcludeDepartment: [Int]? = nil, itemExcludeId: [Int]? = nil, itemExcludeL1Category: [Int]? = nil, itemExcludeL2Category: [Int]? = nil, itemId: [Int]? = nil, itemL1Category: [Int]? = nil, itemL2Category: [Int]? = nil, itemStore: [Int]? = nil, productTags: [String]? = nil) {
            
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
            
            self.itemExcludeDepartment = itemExcludeDepartment
            
            self.itemId = itemId
            
            self.itemExcludeId = itemExcludeId
            
            self.buyRules = buyRules
            
            self.availableZones = availableZones
            
            self.productTags = productTags
            
            self.allItems = allItems
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                itemStore = try container.decode([Int].self, forKey: .itemStore)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemCompany = try container.decode([Int].self, forKey: .itemCompany)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemBrand = try container.decode([Int].self, forKey: .itemBrand)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemExcludeBrand = try container.decode([Int].self, forKey: .itemExcludeBrand)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemCategory = try container.decode([Int].self, forKey: .itemCategory)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemExcludeCategory = try container.decode([Int].self, forKey: .itemExcludeCategory)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemL1Category = try container.decode([Int].self, forKey: .itemL1Category)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemExcludeL1Category = try container.decode([Int].self, forKey: .itemExcludeL1Category)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemL2Category = try container.decode([Int].self, forKey: .itemL2Category)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemExcludeL2Category = try container.decode([Int].self, forKey: .itemExcludeL2Category)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemDepartment = try container.decode([Int].self, forKey: .itemDepartment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemExcludeDepartment = try container.decode([Int].self, forKey: .itemExcludeDepartment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemId = try container.decode([Int].self, forKey: .itemId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemExcludeId = try container.decode([Int].self, forKey: .itemExcludeId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                buyRules = try container.decode([String].self, forKey: .buyRules)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                availableZones = try container.decode([String].self, forKey: .availableZones)
            
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
            
            
            
            do {
                allItems = try container.decode(Bool.self, forKey: .allItems)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(itemExcludeDepartment, forKey: .itemExcludeDepartment)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(itemExcludeId, forKey: .itemExcludeId)
            
            
            
            try? container.encodeIfPresent(buyRules, forKey: .buyRules)
            
            
            
            try? container.encodeIfPresent(availableZones, forKey: .availableZones)
            
            
            
            try? container.encodeIfPresent(productTags, forKey: .productTags)
            
            
            
            try? container.encodeIfPresent(allItems, forKey: .allItems)
            
            
        }
        
    }
}
