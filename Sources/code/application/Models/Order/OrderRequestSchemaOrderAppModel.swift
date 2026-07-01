

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: OrderRequestSchema
        Used By: Order
    */
    class OrderRequestSchema: Codable {
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
        }

        public init(meta: [String: Any]? = nil) {
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                meta = try container.decode([String: Any].self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
