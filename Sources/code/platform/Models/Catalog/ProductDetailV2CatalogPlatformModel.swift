

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ProductDetailV2
        Used By: Catalog
    */

    class ProductDetailV2: Codable {
        
        
        public var brand: ProductBrand?
        
        public var isExcluded: Bool?
        
        public var isPinned: Bool?
        
        public var itemCode: String?
        
        public var itemType: String?
        
        public var medias: [Media]?
        
        public var name: String?
        
        public var priority: Int?
        
        public var shortDescription: String?
        
        public var slug: String
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case isExcluded = "is_excluded"
            
            case isPinned = "is_pinned"
            
            case itemCode = "item_code"
            
            case itemType = "item_type"
            
            case medias = "medias"
            
            case name = "name"
            
            case priority = "priority"
            
            case shortDescription = "short_description"
            
            case slug = "slug"
            
            case uid = "uid"
            
        }

        public init(brand: ProductBrand? = nil, isExcluded: Bool? = nil, isPinned: Bool? = nil, itemCode: String? = nil, itemType: String? = nil, medias: [Media]? = nil, name: String? = nil, priority: Int? = nil, shortDescription: String? = nil, slug: String, uid: Int? = nil) {
            
            self.brand = brand
            
            self.isExcluded = isExcluded
            
            self.isPinned = isPinned
            
            self.itemCode = itemCode
            
            self.itemType = itemType
            
            self.medias = medias
            
            self.name = name
            
            self.priority = priority
            
            self.shortDescription = shortDescription
            
            self.slug = slug
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brand = try container.decode(ProductBrand.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isExcluded = try container.decode(Bool.self, forKey: .isExcluded)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPinned = try container.decode(Bool.self, forKey: .isPinned)
                
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
                    itemType = try container.decode(String.self, forKey: .itemType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                
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
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shortDescription = try container.decode(String.self, forKey: .shortDescription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(isExcluded, forKey: .isExcluded)
            
            
            
            
            try? container.encodeIfPresent(isPinned, forKey: .isPinned)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ProductDetailV2
        Used By: Catalog
    */

    class ProductDetailV2: Codable {
        
        
        public var brand: ProductBrand?
        
        public var isExcluded: Bool?
        
        public var isPinned: Bool?
        
        public var itemCode: String?
        
        public var itemType: String?
        
        public var medias: [Media]?
        
        public var name: String?
        
        public var priority: Int?
        
        public var shortDescription: String?
        
        public var slug: String
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case brand = "brand"
            
            case isExcluded = "is_excluded"
            
            case isPinned = "is_pinned"
            
            case itemCode = "item_code"
            
            case itemType = "item_type"
            
            case medias = "medias"
            
            case name = "name"
            
            case priority = "priority"
            
            case shortDescription = "short_description"
            
            case slug = "slug"
            
            case uid = "uid"
            
        }

        public init(brand: ProductBrand? = nil, isExcluded: Bool? = nil, isPinned: Bool? = nil, itemCode: String? = nil, itemType: String? = nil, medias: [Media]? = nil, name: String? = nil, priority: Int? = nil, shortDescription: String? = nil, slug: String, uid: Int? = nil) {
            
            self.brand = brand
            
            self.isExcluded = isExcluded
            
            self.isPinned = isPinned
            
            self.itemCode = itemCode
            
            self.itemType = itemType
            
            self.medias = medias
            
            self.name = name
            
            self.priority = priority
            
            self.shortDescription = shortDescription
            
            self.slug = slug
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    brand = try container.decode(ProductBrand.self, forKey: .brand)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isExcluded = try container.decode(Bool.self, forKey: .isExcluded)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isPinned = try container.decode(Bool.self, forKey: .isPinned)
                
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
                    itemType = try container.decode(String.self, forKey: .itemType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    medias = try container.decode([Media].self, forKey: .medias)
                
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
                    priority = try container.decode(Int.self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shortDescription = try container.decode(String.self, forKey: .shortDescription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(brand, forKey: .brand)
            
            
            
            
            try? container.encodeIfPresent(isExcluded, forKey: .isExcluded)
            
            
            
            
            try? container.encodeIfPresent(isPinned, forKey: .isPinned)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            
            try? container.encodeIfPresent(medias, forKey: .medias)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(shortDescription, forKey: .shortDescription)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}


