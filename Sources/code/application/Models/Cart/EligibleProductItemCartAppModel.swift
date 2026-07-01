

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: EligibleProductItem
        Used By: Cart
    */
    class EligibleProductItem: Codable {
        
        public var productSlug: String?
        
        public var uid: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case productSlug = "product_slug"
            
            case uid = "uid"
            
        }

        public init(productSlug: String? = nil, uid: Int? = nil) {
            
            self.productSlug = productSlug
            
            self.uid = uid
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                productSlug = try container.decode(String.self, forKey: .productSlug)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
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
            
            
            try? container.encodeIfPresent(productSlug, forKey: .productSlug)
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
        }
        
    }
}
