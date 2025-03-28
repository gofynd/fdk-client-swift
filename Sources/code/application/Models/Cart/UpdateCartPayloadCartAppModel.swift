

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: UpdateCartPayload
        Used By: Cart
    */
    class UpdateCartPayload: Codable {
        
        public var items: [UpdateProductCart]?
        
        public var freeGiftItems: [FreeGiftItemCreation]?
        
        public var operation: String
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case freeGiftItems = "free_gift_items"
            
            case operation = "operation"
            
        }

        public init(freeGiftItems: [FreeGiftItemCreation]? = nil, items: [UpdateProductCart]? = nil, operation: String) {
            
            self.items = items
            
            self.freeGiftItems = freeGiftItems
            
            self.operation = operation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                items = try container.decode([UpdateProductCart].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                freeGiftItems = try container.decode([FreeGiftItemCreation].self, forKey: .freeGiftItems)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            operation = try container.decode(String.self, forKey: .operation)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(freeGiftItems, forKey: .freeGiftItems)
            
            
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            
        }
        
    }
}
