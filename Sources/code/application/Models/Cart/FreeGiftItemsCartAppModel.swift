

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: FreeGiftItems
        Used By: Cart
    */
    class FreeGiftItems: Codable {
        
        public var itemSlug: String?
        
        public var itemName: String?
        
        public var itemPriceDetails: ItemPriceDetails?
        
        public var articlePrice: ArticlePriceDetails?
        
        public var itemBrandName: String?
        
        public var itemId: Int?
        
        public var availableSizes: [String]?
        
        public var size: String?
        
        public var itemImagesUrl: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemSlug = "item_slug"
            
            case itemName = "item_name"
            
            case itemPriceDetails = "item_price_details"
            
            case articlePrice = "article_price"
            
            case itemBrandName = "item_brand_name"
            
            case itemId = "item_id"
            
            case availableSizes = "available_sizes"
            
            case size = "size"
            
            case itemImagesUrl = "item_images_url"
            
        }

        public init(articlePrice: ArticlePriceDetails? = nil, availableSizes: [String]? = nil, itemBrandName: String? = nil, itemId: Int? = nil, itemImagesUrl: [String]? = nil, itemName: String? = nil, itemPriceDetails: ItemPriceDetails? = nil, itemSlug: String? = nil, size: String? = nil) {
            
            self.itemSlug = itemSlug
            
            self.itemName = itemName
            
            self.itemPriceDetails = itemPriceDetails
            
            self.articlePrice = articlePrice
            
            self.itemBrandName = itemBrandName
            
            self.itemId = itemId
            
            self.availableSizes = availableSizes
            
            self.size = size
            
            self.itemImagesUrl = itemImagesUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                itemSlug = try container.decode(String.self, forKey: .itemSlug)
            
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
                itemPriceDetails = try container.decode(ItemPriceDetails.self, forKey: .itemPriceDetails)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                articlePrice = try container.decode(ArticlePriceDetails.self, forKey: .articlePrice)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                itemBrandName = try container.decode(String.self, forKey: .itemBrandName)
            
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
                availableSizes = try container.decode([String].self, forKey: .availableSizes)
            
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
                itemImagesUrl = try container.decode([String].self, forKey: .itemImagesUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(itemSlug, forKey: .itemSlug)
            
            
            
            try? container.encodeIfPresent(itemName, forKey: .itemName)
            
            
            
            try? container.encodeIfPresent(itemPriceDetails, forKey: .itemPriceDetails)
            
            
            
            try? container.encodeIfPresent(articlePrice, forKey: .articlePrice)
            
            
            
            try? container.encodeIfPresent(itemBrandName, forKey: .itemBrandName)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(availableSizes, forKey: .availableSizes)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(itemImagesUrl, forKey: .itemImagesUrl)
            
            
        }
        
    }
}
