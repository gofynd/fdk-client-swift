

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: PlatformUpdateCartRequestObject
        Used By: Cart
    */

    class PlatformUpdateCartRequestObject: Codable {
        
        
        public var userId: String?
        
        public var items: [UpdateProductCart]?
        
        public var operation: String
        

        public enum CodingKeys: String, CodingKey {
            
            case userId = "user_id"
            
            case items = "items"
            
            case operation = "operation"
            
        }

        public init(items: [UpdateProductCart]? = nil, operation: String, userId: String? = nil) {
            
            self.userId = userId
            
            self.items = items
            
            self.operation = operation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    items = try container.decode([UpdateProductCart].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                operation = try container.decode(String.self, forKey: .operation)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            
        }
        
    }
}


