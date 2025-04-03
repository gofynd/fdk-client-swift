

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductSizePriceServiceabilityItemsRequest
        Used By: Catalog
    */
    class ProductSizePriceServiceabilityItemsRequest: Codable {
        
        public var slug: String?
        
        public var size: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
            case size = "size"
            
        }

        public init(size: String? = nil, slug: String? = nil) {
            
            self.slug = slug
            
            self.size = size
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
        }
        
    }
}
