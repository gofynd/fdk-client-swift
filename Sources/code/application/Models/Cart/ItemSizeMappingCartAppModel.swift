

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: ItemSizeMapping
        Used By: Cart
    */
    class ItemSizeMapping: Codable {
        
        public var itemSizeMapping: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemSizeMapping = "item_size_mapping"
            
        }

        public init(itemSizeMapping: [String: Any]? = nil) {
            
            self.itemSizeMapping = itemSizeMapping
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                itemSizeMapping = try container.decode([String: Any].self, forKey: .itemSizeMapping)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(itemSizeMapping, forKey: .itemSizeMapping)
            
            
        }
        
    }
}
