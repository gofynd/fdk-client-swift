

import Foundation
public extension PlatformClient {
    /*
        Model: ProductVariantsResponse
        Used By: Catalog
    */

    class ProductVariantsResponse: Codable {
        
        
        public var variants: [ProductVariants]?
        
        public var page: Page?
        

        public enum CodingKeys: String, CodingKey {
            
            case variants = "variants"
            
            case page = "page"
            
        }

        public init(page: Page? = nil, variants: [ProductVariants]? = nil) {
            
            self.variants = variants
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    variants = try container.decode([ProductVariants].self, forKey: .variants)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
}
