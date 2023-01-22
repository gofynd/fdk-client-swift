

import Foundation
public extension PlatformClient {
    /*
        Model: UpdateCartRequest
        Used By: Cart
    */

    class UpdateCartRequest: Codable {
        
        
        public var operation: String
        
        public var items: [UpdateProductCart]?
        

        public enum CodingKeys: String, CodingKey {
            
            case operation = "operation"
            
            case items = "items"
            
        }

        public init(items: [UpdateProductCart]? = nil, operation: String) {
            
            self.operation = operation
            
            self.items = items
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                operation = try container.decode(String.self, forKey: .operation)
                
            
            
            
                do {
                    items = try container.decode([UpdateProductCart].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(operation, forKey: .operation)
            
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
        }
        
    }
}
