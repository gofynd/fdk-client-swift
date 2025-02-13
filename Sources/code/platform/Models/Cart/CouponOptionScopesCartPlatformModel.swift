

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CouponOptionScopes
        Used By: Cart
    */

    class CouponOptionScopes: Codable {
        
        
        public var categoryId: String?
        
        public var brandId: String?
        
        public var companyId: String?
        
        public var storeId: String?
        
        public var collectionId: String?
        
        public var excludeBrandId: String?
        
        public var categoryDepartment: String?
        
        public var l1CategoryId: String?
        
        public var l2CategoryId: String?
        
        public var excludeCategoryId: String?
        
        public var excludeL1CategoryId: String?
        
        public var excludeL2CategoryId: String?
        
        public var itemTags: String?
        
        public var tags: String?
        
        public var zonesId: String?
        
        public var cartType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case categoryId = "category_id"
            
            case brandId = "brand_id"
            
            case companyId = "company_id"
            
            case storeId = "store_id"
            
            case collectionId = "collection_id"
            
            case excludeBrandId = "exclude_brand_id"
            
            case categoryDepartment = "category_department"
            
            case l1CategoryId = "l1_category_id"
            
            case l2CategoryId = "l2_category_id"
            
            case excludeCategoryId = "exclude_category_id"
            
            case excludeL1CategoryId = "exclude_l1_category_id"
            
            case excludeL2CategoryId = "exclude_l2_category_id"
            
            case itemTags = "item_tags"
            
            case tags = "tags"
            
            case zonesId = "zones_id"
            
            case cartType = "cart_type"
            
        }

        public init(brandId: String? = nil, cartType: String? = nil, categoryDepartment: String? = nil, categoryId: String? = nil, collectionId: String? = nil, companyId: String? = nil, excludeBrandId: String? = nil, excludeCategoryId: String? = nil, excludeL1CategoryId: String? = nil, excludeL2CategoryId: String? = nil, itemTags: String? = nil, l1CategoryId: String? = nil, l2CategoryId: String? = nil, storeId: String? = nil, tags: String? = nil, zonesId: String? = nil) {
            
            self.categoryId = categoryId
            
            self.brandId = brandId
            
            self.companyId = companyId
            
            self.storeId = storeId
            
            self.collectionId = collectionId
            
            self.excludeBrandId = excludeBrandId
            
            self.categoryDepartment = categoryDepartment
            
            self.l1CategoryId = l1CategoryId
            
            self.l2CategoryId = l2CategoryId
            
            self.excludeCategoryId = excludeCategoryId
            
            self.excludeL1CategoryId = excludeL1CategoryId
            
            self.excludeL2CategoryId = excludeL2CategoryId
            
            self.itemTags = itemTags
            
            self.tags = tags
            
            self.zonesId = zonesId
            
            self.cartType = cartType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    categoryId = try container.decode(String.self, forKey: .categoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandId = try container.decode(String.self, forKey: .brandId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    companyId = try container.decode(String.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeId = try container.decode(String.self, forKey: .storeId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    collectionId = try container.decode(String.self, forKey: .collectionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    excludeBrandId = try container.decode(String.self, forKey: .excludeBrandId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    categoryDepartment = try container.decode(String.self, forKey: .categoryDepartment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l1CategoryId = try container.decode(String.self, forKey: .l1CategoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    l2CategoryId = try container.decode(String.self, forKey: .l2CategoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    excludeCategoryId = try container.decode(String.self, forKey: .excludeCategoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    excludeL1CategoryId = try container.decode(String.self, forKey: .excludeL1CategoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    excludeL2CategoryId = try container.decode(String.self, forKey: .excludeL2CategoryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemTags = try container.decode(String.self, forKey: .itemTags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode(String.self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    zonesId = try container.decode(String.self, forKey: .zonesId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cartType = try container.decode(String.self, forKey: .cartType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(categoryId, forKey: .categoryId)
            
            
            
            
            try? container.encodeIfPresent(brandId, forKey: .brandId)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            
            try? container.encodeIfPresent(collectionId, forKey: .collectionId)
            
            
            
            
            try? container.encodeIfPresent(excludeBrandId, forKey: .excludeBrandId)
            
            
            
            
            try? container.encodeIfPresent(categoryDepartment, forKey: .categoryDepartment)
            
            
            
            
            try? container.encodeIfPresent(l1CategoryId, forKey: .l1CategoryId)
            
            
            
            
            try? container.encodeIfPresent(l2CategoryId, forKey: .l2CategoryId)
            
            
            
            
            try? container.encodeIfPresent(excludeCategoryId, forKey: .excludeCategoryId)
            
            
            
            
            try? container.encodeIfPresent(excludeL1CategoryId, forKey: .excludeL1CategoryId)
            
            
            
            
            try? container.encodeIfPresent(excludeL2CategoryId, forKey: .excludeL2CategoryId)
            
            
            
            
            try? container.encodeIfPresent(itemTags, forKey: .itemTags)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            
            try? container.encodeIfPresent(zonesId, forKey: .zonesId)
            
            
            
            
            try? container.encodeIfPresent(cartType, forKey: .cartType)
            
            
        }
        
    }
}


