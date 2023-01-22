

import Foundation
public extension ApplicationClient {
    /*
        Model: CartProduct
        Used By: Cart
    */
    class CartProduct: Codable {
        
        public var action: ProductAction?
        
        public var images: [ProductImage]?
        
        public var type: String?
        
        public var uid: Int?
        
        public var name: String?
        
        public var categories: [CategoryInfo]?
        
        public var slug: String?
        
        public var netQuantity: NetQuantity?
        
        public var brand: BaseInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case action = "action"
            
            case images = "images"
            
            case type = "type"
            
            case uid = "uid"
            
            case name = "name"
            
            case categories = "categories"
            
            case slug = "slug"
            
            case netQuantity = "net_quantity"
            
            case brand = "brand"
            
        }

        public init(action: ProductAction? = nil, brand: BaseInfo? = nil, categories: [CategoryInfo]? = nil, images: [ProductImage]? = nil, name: String? = nil, netQuantity: NetQuantity? = nil, slug: String? = nil, type: String? = nil, uid: Int? = nil) {
            
            self.action = action
            
            self.images = images
            
            self.type = type
            
            self.uid = uid
            
            self.name = name
            
            self.categories = categories
            
            self.slug = slug
            
            self.netQuantity = netQuantity
            
            self.brand = brand
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                action = try container.decode(ProductAction.self, forKey: .action)
            
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
                type = try container.decode(String.self, forKey: .type)
            
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
                name = try container.decode(String.self, forKey: .name)
            
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
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                netQuantity = try container.decode(NetQuantity.self, forKey: .netQuantity)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(categories, forKey: .categories)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(netQuantity, forKey: .netQuantity)
            
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
        }
        
    }
}
