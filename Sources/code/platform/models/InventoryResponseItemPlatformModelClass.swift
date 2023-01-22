

import Foundation
public extension PlatformClient {
    /*
        Model: InventoryResponseItem
        Used By: Catalog
    */

    class InventoryResponseItem: Codable {
        
        
        public var data: InventoryPayload?
        
        public var reason: InventoryFailedReason?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case reason = "reason"
            
        }

        public init(data: InventoryPayload? = nil, reason: InventoryFailedReason? = nil) {
            
            self.data = data
            
            self.reason = reason
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(InventoryPayload.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(InventoryFailedReason.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
        }
        
    }
}
