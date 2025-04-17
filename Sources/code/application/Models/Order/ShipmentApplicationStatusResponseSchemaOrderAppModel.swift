

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ShipmentApplicationStatusResponseSchema
        Used By: Order
    */
    class ShipmentApplicationStatusResponseSchema: Codable {
        
        public var statuses: [StatusesBodyResponseSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case statuses = "statuses"
            
        }

        public init(statuses: [StatusesBodyResponseSchema]? = nil) {
            
            self.statuses = statuses
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                statuses = try container.decode([StatusesBodyResponseSchema].self, forKey: .statuses)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(statuses, forKey: .statuses)
            
            
        }
        
    }
}
