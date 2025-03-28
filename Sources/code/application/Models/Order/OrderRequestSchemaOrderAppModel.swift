

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: OrderRequestSchema
        Used By: Order
    */
    class OrderRequestSchema: Codable {
        
        public var meta: [String: Any]?
        
        public var externalOrderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case meta = "meta"
            
            case externalOrderId = "external_order_id"
            
        }

        public init(externalOrderId: String? = nil, meta: [String: Any]? = nil) {
            
            self.meta = meta
            
            self.externalOrderId = externalOrderId
            
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
            
            
            
            do {
                externalOrderId = try container.decode(String.self, forKey: .externalOrderId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
            
            try? container.encodeIfPresent(externalOrderId, forKey: .externalOrderId)
            
            
        }
        
    }
}
