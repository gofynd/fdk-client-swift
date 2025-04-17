

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: OrderTag
        Used By: Cart
    */
    class OrderTag: Codable {
        
        public var displayText: String?
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case displayText = "display_text"
            
            case slug = "slug"
            
        }

        public init(displayText: String? = nil, slug: String? = nil) {
            
            self.displayText = displayText
            
            self.slug = slug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                displayText = try container.decode(String.self, forKey: .displayText)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(displayText, forKey: .displayText)
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
}
