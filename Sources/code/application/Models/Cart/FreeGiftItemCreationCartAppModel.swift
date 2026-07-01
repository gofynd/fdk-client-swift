

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: FreeGiftItemCreation
        Used By: Cart
    */
    class FreeGiftItemCreation: Codable {
        
        public var promotionId: String
        
        public var itemId: String
        
        public var itemSize: String
        

        public enum CodingKeys: String, CodingKey {
            
            case promotionId = "promotion_id"
            
            case itemId = "item_id"
            
            case itemSize = "item_size"
            
        }

        public init(itemId: String, itemSize: String, promotionId: String) {
            
            self.promotionId = promotionId
            
            self.itemId = itemId
            
            self.itemSize = itemSize
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            promotionId = try container.decode(String.self, forKey: .promotionId)
            
            
            
            
            itemId = try container.decode(String.self, forKey: .itemId)
            
            
            
            
            itemSize = try container.decode(String.self, forKey: .itemSize)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(promotionId, forKey: .promotionId)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(itemSize, forKey: .itemSize)
            
            
        }
        
    }
}
