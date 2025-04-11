

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: Article
        Used By: Order
    */
    class Article: Codable {
        
        public var tags: [String]?
        
        public var variants: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case tags = "tags"
            
            case variants = "variants"
            
        }

        public init(tags: [String]? = nil, variants: [String: Any]? = nil) {
            
            self.tags = tags
            
            self.variants = variants
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                tags = try container.decode([String].self, forKey: .tags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                variants = try container.decode([String: Any].self, forKey: .variants)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(variants, forKey: .variants)
            
            
        }
        
    }
}
