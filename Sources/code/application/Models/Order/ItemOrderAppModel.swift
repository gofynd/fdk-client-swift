

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: Item
        Used By: Order
    */
    class Item: Codable {
        
        public var image: [String]?
        
        public var l1Categories: [String]?
        
        public var l2Category: [String]?
        
        public var l2CategoryId: Double?
        
        public var brand: ItemBrand?
        
        public var sellerIdentifier: String?
        
        public var code: String?
        
        public var id: Double?
        
        public var name: String?
        
        public var l3CategoryName: String?
        
        public var slugKey: String?
        
        public var l2Categories: [String]?
        
        public var size: String?
        
        public var attributes: [String: Any]?
        
        public var variants: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case image = "image"
            
            case l1Categories = "l1_categories"
            
            case l2Category = "l2_category"
            
            case l2CategoryId = "l2_category_id"
            
            case brand = "brand"
            
            case sellerIdentifier = "seller_identifier"
            
            case code = "code"
            
            case id = "id"
            
            case name = "name"
            
            case l3CategoryName = "l3_category_name"
            
            case slugKey = "slug_key"
            
            case l2Categories = "l2_categories"
            
            case size = "size"
            
            case attributes = "attributes"
            
            case variants = "variants"
            
        }

        public init(attributes: [String: Any]? = nil, brand: ItemBrand? = nil, code: String? = nil, id: Double? = nil, image: [String]? = nil, l1Categories: [String]? = nil, l2Categories: [String]? = nil, l2Category: [String]? = nil, l2CategoryId: Double? = nil, l3CategoryName: String? = nil, name: String? = nil, sellerIdentifier: String? = nil, size: String? = nil, slugKey: String? = nil, variants: [String: Any]? = nil) {
            
            self.image = image
            
            self.l1Categories = l1Categories
            
            self.l2Category = l2Category
            
            self.l2CategoryId = l2CategoryId
            
            self.brand = brand
            
            self.sellerIdentifier = sellerIdentifier
            
            self.code = code
            
            self.id = id
            
            self.name = name
            
            self.l3CategoryName = l3CategoryName
            
            self.slugKey = slugKey
            
            self.l2Categories = l2Categories
            
            self.size = size
            
            self.attributes = attributes
            
            self.variants = variants
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                image = try container.decode([String].self, forKey: .image)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                l1Categories = try container.decode([String].self, forKey: .l1Categories)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                l2Category = try container.decode([String].self, forKey: .l2Category)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                l2CategoryId = try container.decode(Double.self, forKey: .l2CategoryId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                brand = try container.decode(ItemBrand.self, forKey: .brand)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                code = try container.decode(String.self, forKey: .code)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                id = try container.decode(Double.self, forKey: .id)
            
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
                l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                slugKey = try container.decode(String.self, forKey: .slugKey)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                l2Categories = try container.decode([String].self, forKey: .l2Categories)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                size = try container.decode(String.self, forKey: .size)
            
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
                variants = try container.decode([String: Any].self, forKey: .variants)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(image, forKey: .image)
            
            
            
            try? container.encodeIfPresent(l1Categories, forKey: .l1Categories)
            
            
            
            try? container.encodeIfPresent(l2Category, forKey: .l2Category)
            
            
            
            try? container.encodeIfPresent(l2CategoryId, forKey: .l2CategoryId)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)
            
            
            
            try? container.encodeIfPresent(slugKey, forKey: .slugKey)
            
            
            
            try? container.encodeIfPresent(l2Categories, forKey: .l2Categories)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
        }
        
    }
}
