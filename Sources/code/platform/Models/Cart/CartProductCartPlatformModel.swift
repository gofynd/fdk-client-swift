

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
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
        
        public var attributes: ProductAttributes?
        

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
            
        }

        public init(action: ProductAction? = nil, attributes: ProductAttributes? = nil, brand: BaseInfo? = nil, categories: [CategoryInfo]? = nil, images: [ProductImage]? = nil, itemCode: String? = nil, name: String? = nil, slug: String? = nil, tags: [String]? = nil, teaserTag: [String: Any]? = nil, type: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            
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
                    attributes = try container.decode(ProductAttributes.self, forKey: .attributes)
                
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
            
            
        }
        
    }
}


