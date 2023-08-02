

import Foundation
public extension ApplicationClient.PosCart {
    /*
        Model: FreeGiftItem
        Used By: PosCart
    */
    class FreeGiftItem: Codable {
        
        public var itemSlug: String?
        
        public var itemPriceDetails: [String: Any]?
        
        public var itemImagesUrl: [String]?
        
        public var itemName: String?
        
        public var itemId: Int?
        
        public var itemBrandName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemSlug = "item_slug"
            
            case itemPriceDetails = "item_price_details"
            
            case itemImagesUrl = "item_images_url"
            
            case itemName = "item_name"
            
            case itemId = "item_id"
            
            case itemBrandName = "item_brand_name"
            
        }

        public init(itemBrandName: String? = nil, itemId: Int? = nil, itemImagesUrl: [String]? = nil, itemName: String? = nil, itemPriceDetails: [String: Any]? = nil, itemSlug: String? = nil) {
            
            self.itemSlug = itemSlug
            
            self.itemPriceDetails = itemPriceDetails
            
            self.itemImagesUrl = itemImagesUrl
            
            self.itemName = itemName
            
            self.itemId = itemId
            
            self.itemBrandName = itemBrandName
            
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
                itemPriceDetails = try container.decode([String: Any].self, forKey: .itemPriceDetails)
            
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
            
            
            
            do {
                itemName = try container.decode(String.self, forKey: .itemName)
            
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
                itemBrandName = try container.decode(String.self, forKey: .itemBrandName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemSlug, forKey: .itemSlug)
            
            
            
            
            try? container.encodeIfPresent(itemPriceDetails, forKey: .itemPriceDetails)
            
            
            
            
            try? container.encodeIfPresent(itemImagesUrl, forKey: .itemImagesUrl)
            
            
            
            
            try? container.encodeIfPresent(itemName, forKey: .itemName)
            
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            
            try? container.encodeIfPresent(itemBrandName, forKey: .itemBrandName)
            
            
        }
        
    }
}
