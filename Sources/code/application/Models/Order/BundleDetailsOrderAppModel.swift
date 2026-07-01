

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: BundleDetails
        Used By: Order
    */
    class BundleDetails: Codable {
        
        public var bundleGroupId: String?
        
        public var name: String?
        
        public var slug: String?
        
        public var bundleCount: Int?
        
        public var articleBundleId: String?
        
        public var bundleArticleQuantity: Int?
        
        public var isBase: Bool?
        
        public var priceMarked: Double?
        
        public var priceEffective: Double?
        
        public var itemId: Int?
        
        public var itemType: String?
        
        public var returnConfig: BundleReturnConfig?
        
        public var sellerIdentifier: String?
        
        public var images: [String]?
        
        public var brandName: String?
        
        public var size: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case bundleGroupId = "bundle_group_id"
            
            case name = "name"
            
            case slug = "slug"
            
            case bundleCount = "bundle_count"
            
            case articleBundleId = "article_bundle_id"
            
            case bundleArticleQuantity = "bundle_article_quantity"
            
            case isBase = "is_base"
            
            case priceMarked = "price_marked"
            
            case priceEffective = "price_effective"
            
            case itemId = "item_id"
            
            case itemType = "item_type"
            
            case returnConfig = "return_config"
            
            case sellerIdentifier = "seller_identifier"
            
            case images = "images"
            
            case brandName = "brand_name"
            
            case size = "size"
            
        }

        public init(articleBundleId: String? = nil, brandName: String? = nil, bundleArticleQuantity: Int? = nil, bundleCount: Int? = nil, bundleGroupId: String? = nil, images: [String]? = nil, isBase: Bool? = nil, itemId: Int? = nil, itemType: String? = nil, name: String? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, returnConfig: BundleReturnConfig? = nil, sellerIdentifier: String? = nil, size: String? = nil, slug: String? = nil) {
            
            self.bundleGroupId = bundleGroupId
            
            self.name = name
            
            self.slug = slug
            
            self.bundleCount = bundleCount
            
            self.articleBundleId = articleBundleId
            
            self.bundleArticleQuantity = bundleArticleQuantity
            
            self.isBase = isBase
            
            self.priceMarked = priceMarked
            
            self.priceEffective = priceEffective
            
            self.itemId = itemId
            
            self.itemType = itemType
            
            self.returnConfig = returnConfig
            
            self.sellerIdentifier = sellerIdentifier
            
            self.images = images
            
            self.brandName = brandName
            
            self.size = size
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                bundleGroupId = try container.decode(String.self, forKey: .bundleGroupId)
            
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
                slug = try container.decode(String.self, forKey: .slug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                bundleCount = try container.decode(Int.self, forKey: .bundleCount)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articleBundleId = try container.decode(String.self, forKey: .articleBundleId)
            
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
                isBase = try container.decode(Bool.self, forKey: .isBase)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)
            
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
                itemType = try container.decode(String.self, forKey: .itemType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                returnConfig = try container.decode(BundleReturnConfig.self, forKey: .returnConfig)
            
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
                images = try container.decode([String].self, forKey: .images)
            
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
            
            
            try? container.encodeIfPresent(bundleGroupId, forKey: .bundleGroupId)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(bundleCount, forKey: .bundleCount)
            
            
            
            try? container.encodeIfPresent(articleBundleId, forKey: .articleBundleId)
            
            
            
            try? container.encodeIfPresent(bundleArticleQuantity, forKey: .bundleArticleQuantity)
            
            
            
            try? container.encodeIfPresent(isBase, forKey: .isBase)
            
            
            
            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)
            
            
            
            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(itemType, forKey: .itemType)
            
            
            
            try? container.encodeIfPresent(returnConfig, forKey: .returnConfig)
            
            
            
            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
            
            
            
            try? container.encodeIfPresent(images, forKey: .images)
            
            
            
            try? container.encodeIfPresent(brandName, forKey: .brandName)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
}
