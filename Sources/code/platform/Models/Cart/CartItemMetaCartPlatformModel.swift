

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: CartItemMeta
        Used By: Cart
    */

    class CartItemMeta: Codable {
        
        
        public var primaryItem: Bool?
        
        public var groupId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case primaryItem = "primary_item"
            
            case groupId = "group_id"
            
        }

        public init(groupId: String? = nil, primaryItem: Bool? = nil) {
            
            self.primaryItem = primaryItem
            
            self.groupId = groupId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    primaryItem = try container.decode(Bool.self, forKey: .primaryItem)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    groupId = try container.decode(String.self, forKey: .groupId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(primaryItem, forKey: .primaryItem)
            
            
            
            
            try? container.encodeIfPresent(groupId, forKey: .groupId)
            
            
        }
        
    }
}


