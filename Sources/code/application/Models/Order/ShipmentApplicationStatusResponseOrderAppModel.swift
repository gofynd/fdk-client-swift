

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ShipmentApplicationStatusResponse
        Used By: Order
    */
    class ShipmentApplicationStatusResponse: Codable {
        
        public var statuses: [StatusesBodyResponse]?
        

        public enum CodingKeys: String, CodingKey {
            
            case statuses = "statuses"
            
        }

        public init(statuses: [StatusesBodyResponse]? = nil) {
            
            self.statuses = statuses
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                statuses = try container.decode([StatusesBodyResponse].self, forKey: .statuses)
            
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
