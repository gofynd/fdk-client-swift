

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ShipmentsArticles
        Used By: Logistic
    */
    class ShipmentsArticles: Codable {
        
        public var id: String
        
        public var quantity: Int
        
        public var itemId: Int
        
        public var size: String
        
        public var isSet: Bool?
        
        public var set: ArticleSet?
        
        public var sla: String
        
        public var meta: ShipmentArticleMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case quantity = "quantity"
            
            case itemId = "item_id"
            
            case size = "size"
            
            case isSet = "is_set"
            
            case set = "set"
            
            case sla = "sla"
            
            case meta = "meta"
            
        }

        public init(id: String, isSet: Bool? = nil, itemId: Int, meta: ShipmentArticleMeta? = nil, quantity: Int, set: ArticleSet? = nil, size: String, sla: String) {
            
            self.id = id
            
            self.quantity = quantity
            
            self.itemId = itemId
            
            self.size = size
            
            self.isSet = isSet
            
            self.set = set
            
            self.sla = sla
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            id = try container.decode(String.self, forKey: .id)
            
            
            
            
            quantity = try container.decode(Int.self, forKey: .quantity)
            
            
            
            
            itemId = try container.decode(Int.self, forKey: .itemId)
            
            
            
            
            size = try container.decode(String.self, forKey: .size)
            
            
            
            
            do {
                isSet = try container.decode(Bool.self, forKey: .isSet)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                set = try container.decode(ArticleSet.self, forKey: .set)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            sla = try container.decode(String.self, forKey: .sla)
            
            
            
            
            do {
                meta = try container.decode(ShipmentArticleMeta.self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(quantity, forKey: .quantity)
            
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(isSet, forKey: .isSet)
            
            
            
            try? container.encodeIfPresent(set, forKey: .set)
            
            
            
            try? container.encodeIfPresent(sla, forKey: .sla)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
