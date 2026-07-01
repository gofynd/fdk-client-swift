

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ProductVariantsResponseSchema
        Used By: Catalog
    */
    class ProductVariantsResponseSchema: Codable {
        
        public var variants: [ProductVariantResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case variants = "variants"
            
        }

        public init(variants: [ProductVariantResponseSchema]? = nil) {
            
            self.variants = variants
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                variants = try container.decode([ProductVariantResponseSchema].self, forKey: .variants)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
        }
        
    }
}
