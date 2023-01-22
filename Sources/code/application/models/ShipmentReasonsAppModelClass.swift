

import Foundation
public extension ApplicationClient {
    /*
        Model: ShipmentReasons
        Used By: Order
    */
    class ShipmentReasons: Codable {
        
        public var reasons: [ShipmentReason]?
        

        public enum CodingKeys: String, CodingKey {
            
            case reasons = "reasons"
            
        }

        public init(reasons: [ShipmentReason]? = nil) {
            
            self.reasons = reasons
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                reasons = try container.decode([ShipmentReason].self, forKey: .reasons)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reasons, forKey: .reasons)
            
            
        }
        
    }
}
