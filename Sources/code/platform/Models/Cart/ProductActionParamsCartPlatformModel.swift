

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: ProductActionParams
        Used By: Cart
    */

    class ProductActionParams: Codable {
        
        
        public var slug: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case slug = "slug"
            
        }

        public init(slug: [String]? = nil) {
            
            self.slug = slug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    slug = try container.decode([String].self, forKey: .slug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
}


