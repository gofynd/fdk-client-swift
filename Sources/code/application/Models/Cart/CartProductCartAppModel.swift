

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartProduct
        Used By: Cart
    */
    class CartProduct: Codable {
        
        public var slug: String?
        
        public var images: [ProductImage]?
        
        public var teaserTag: [String: Any]?
        
        public var brand: BaseInfo?
        
        public var action: ProductAction?
        
        public var uid: Int?
        
        public var tags: [String]?
        
        public var customJson: [String: Any]?
        
        public var type: String?
        
        public var name: String?
        
        public var itemCode: String?
        
        public var categories: [CategoryInfo]?
        
        public var attributes: [String: Any]?
        
        public var l1Categories: [Double]?
        
        public var l2Categories: [Double]?
        
        public var l3Categories: [Double]?
        
        public var departments: [Double]?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case images = "images"
            
            case teaserTag = "teaser_tag"
            
            case brand = "brand"
            
            case action = "action"
            
            case uid = "uid"
            
            case tags = "tags"
            
            case customJson = "_custom_json"
            
            case type = "type"
            
            case name = "name"
            
            case itemCode = "item_code"
            
            case categories = "categories"
            
            case attributes = "attributes"
            
            case l1Categories = "l1_categories"
            
            case l2Categories = "l2_categories"
            
            case l3Categories = "l3_categories"
            
            case departments = "departments"
            
        }

        public init(action: ProductAction? = nil, attributes: [String: Any]? = nil, brand: BaseInfo? = nil, categories: [CategoryInfo]? = nil, departments: [Double]? = nil, images: [ProductImage]? = nil, itemCode: String? = nil, l1Categories: [Double]? = nil, l2Categories: [Double]? = nil, l3Categories: [Double]? = nil, name: String? = nil, slug: String? = nil, tags: [String]? = nil, teaserTag: [String: Any]? = nil, type: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            
            self.slug = slug
            
            self.images = images
            
            self.teaserTag = teaserTag
            
            self.brand = brand
            
            self.action = action
            
            self.uid = uid
            
            self.tags = tags
            
            self.customJson = customJson
            
            self.type = type
            
            self.name = name
            
            self.itemCode = itemCode
            
            self.categories = categories
            
            self.attributes = attributes
            
            self.l1Categories = l1Categories
            
            self.l2Categories = l2Categories
            
            self.l3Categories = l3Categories
            
            self.departments = departments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                images = try container.decode([ProductImage].self, forKey: .images)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                teaserTag = try container.decode([String: Any].self, forKey: .teaserTag)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                brand = try container.decode(BaseInfo.self, forKey: .brand)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                action = try container.decode(ProductAction.self, forKey: .action)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                uid = try container.decode(Int.self, forKey: .uid)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tags = try container.decode([String].self, forKey: .tags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                name = try container.decode(String.self, forKey: .name)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                categories = try container.decode([CategoryInfo].self, forKey: .categories)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                attributes = try container.decode([String: Any].self, forKey: .attributes)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                l1Categories = try container.decode([Double].self, forKey: .l1Categories)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                l2Categories = try container.decode([Double].self, forKey: .l2Categories)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                l3Categories = try container.decode([Double].self, forKey: .l3Categories)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                departments = try container.decode([Double].self, forKey: .departments)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(customJson, forKey: .customJson)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            try? container.encodeIfPresent(l1Categories, forKey: .l1Categories)
            
            
            
            try? container.encodeIfPresent(l2Categories, forKey: .l2Categories)
            
            
            
            try? container.encodeIfPresent(l3Categories, forKey: .l3Categories)
            
            
            
            try? container.encodeIfPresent(departments, forKey: .departments)
            
            
        }
        
    }
}
