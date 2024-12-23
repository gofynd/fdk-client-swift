

import Foundation
public extension ApplicationClient.Cart {
    /*
        Model: CartItemInfo
        Used By: Cart
    */
    class CartItemInfo: Codable {
        
        public var itemId: Int?
        
        public var size: String?
        
        public var storeId: Int?
        
        public var success: Bool?
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case itemId = "item_id"
            
            case size = "size"
            
            case storeId = "store_id"
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(itemId: Int? = nil, message: String? = nil, size: String? = nil, storeId: Int? = nil, success: Bool? = nil) {
            
            self.itemId = itemId
            
            self.size = size
            
            self.storeId = storeId
            
            self.success = success
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                itemId = try container.decode(Int.self, forKey: .itemId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                size = try container.decode(String.self, forKey: .size)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                storeId = try container.decode(Int.self, forKey: .storeId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                success = try container.decode(Bool.self, forKey: .success)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                message = try container.decode(String.self, forKey: .message)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(itemId, forKey: .itemId)
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}
