

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSizePriceV1RequestBody
        Used By: Catalog
    */
    class ProductSizePriceV1RequestBody: Codable {
        
        public var slug: String?
        
        public var size: String?
        
        public var parentSlug: String?
        
        public var productGroupingId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case size = "size"
            
            case parentSlug = "parent_slug"
            
            case productGroupingId = "product_grouping_id"
            
        }

        public init(parentSlug: String? = nil, productGroupingId: String? = nil, size: String? = nil, slug: String? = nil) {
            
            self.slug = slug
            
            self.size = size
            
            self.parentSlug = parentSlug
            
            self.productGroupingId = productGroupingId
            
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
                size = try container.decode(String.self, forKey: .size)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                parentSlug = try container.decode(String.self, forKey: .parentSlug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                productGroupingId = try container.decode(String.self, forKey: .productGroupingId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(parentSlug, forKey: .parentSlug)
            
            
            
            try? container.encodeIfPresent(productGroupingId, forKey: .productGroupingId)
            
            
        }
        
    }
}
