

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BundleDetailsSchema
        Used By: Order
    */

    class BundleDetailsSchema: Codable {
        
        
        public var isBase: Bool?
        
        public var images: [String]?
        
        public var groupId: String?
        
        public var name: String?
        
        public var itemType: String?
        
        public var itemId: Int?
        
        public var itemCode: String?
        
        public var itemName: String?
        
        public var sellerIdentifier: String?
        
        public var bundleArticleQuantity: Int?
        
        public var brandName: String?
        
        public var size: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isBase = "is_base"
            
            case images = "images"
            
            case groupId = "group_id"
            
            case name = "name"
            
            case itemType = "item_type"
            
            case itemId = "item_id"
            
            case itemCode = "item_code"
            
            case itemName = "item_name"
            
            case sellerIdentifier = "seller_identifier"
            
            case bundleArticleQuantity = "bundle_article_quantity"
            
            case brandName = "brand_name"
            
            case size = "size"
            
        }

        public init(brandName: String? = nil, bundleArticleQuantity: Int? = nil, groupId: String? = nil, images: [String]? = nil, isBase: Bool? = nil, itemCode: String? = nil, itemId: Int? = nil, itemName: String? = nil, itemType: String? = nil, name: String? = nil, sellerIdentifier: String? = nil, size: String? = nil) {
            
            self.isBase = isBase
            
            self.images = images
            
            self.groupId = groupId
            
            self.name = name
            
            self.itemType = itemType
            
            self.itemId = itemId
            
            self.itemCode = itemCode
            
            self.itemName = itemName
            
            self.sellerIdentifier = sellerIdentifier
            
            self.bundleArticleQuantity = bundleArticleQuantity
            
            self.brandName = brandName
            
            self.size = size
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isBase = try container.decode(Bool.self, forKey: .isBase)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    images = try container.decode([String].self, forKey: .images)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
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
                    itemType = try container.decode(String.self, forKey: .itemType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
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
                    itemName = try container.decode(String.self, forKey: .itemName)
                
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
                    bundleArticleQuantity = try container.decode(Int.self, forKey: .bundleArticleQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isBase, forKey: .isBase)
            
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(itemName, forKey: .itemName)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(bundleArticleQuantity, forKey: .bundleArticleQuantity)
            
            
            
            
            try? container.encodeIfPresent(brandName, forKey: .brandName)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BundleDetailsSchema
        Used By: Order
    */

    class BundleDetailsSchema: Codable {
        
        
        public var isBase: Bool?
        
        public var images: [String]?
        
        public var groupId: String?
        
        public var name: String?
        
        public var itemType: String?
        
        public var itemId: Int?
        
        public var itemCode: String?
        
        public var itemName: String?
        
        public var sellerIdentifier: String?
        
        public var bundleArticleQuantity: Int?
        
        public var brandName: String?
        
        public var size: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isBase = "is_base"
            
            case images = "images"
            
            case groupId = "group_id"
            
            case name = "name"
            
            case itemType = "item_type"
            
            case itemId = "item_id"
            
            case itemCode = "item_code"
            
            case itemName = "item_name"
            
            case sellerIdentifier = "seller_identifier"
            
            case bundleArticleQuantity = "bundle_article_quantity"
            
            case brandName = "brand_name"
            
            case size = "size"
            
        }

        public init(brandName: String? = nil, bundleArticleQuantity: Int? = nil, groupId: String? = nil, images: [String]? = nil, isBase: Bool? = nil, itemCode: String? = nil, itemId: Int? = nil, itemName: String? = nil, itemType: String? = nil, name: String? = nil, sellerIdentifier: String? = nil, size: String? = nil) {
            
            self.isBase = isBase
            
            self.images = images
            
            self.groupId = groupId
            
            self.name = name
            
            self.itemType = itemType
            
            self.itemId = itemId
            
            self.itemCode = itemCode
            
            self.itemName = itemName
            
            self.sellerIdentifier = sellerIdentifier
            
            self.bundleArticleQuantity = bundleArticleQuantity
            
            self.brandName = brandName
            
            self.size = size
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isBase = try container.decode(Bool.self, forKey: .isBase)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    images = try container.decode([String].self, forKey: .images)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
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
                    itemType = try container.decode(String.self, forKey: .itemType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    itemId = try container.decode(Int.self, forKey: .itemId)
                
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
                    itemName = try container.decode(String.self, forKey: .itemName)
                
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
                    bundleArticleQuantity = try container.decode(Int.self, forKey: .bundleArticleQuantity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    brandName = try container.decode(String.self, forKey: .brandName)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isBase, forKey: .isBase)
            
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(itemCode, forKey: .itemCode)
            
            
            
            
            try? container.encodeIfPresent(itemName, forKey: .itemName)
            
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            
            try? container.encodeIfPresent(bundleArticleQuantity, forKey: .bundleArticleQuantity)
            
            
            
            
            try? container.encodeIfPresent(brandName, forKey: .brandName)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
}


