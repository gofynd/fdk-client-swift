

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ShipmentById
        Used By: Order
    */
    class ShipmentById: Codable {
        
        public var shipment: Shipments?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipment = "shipment"
            
        }

        public init(shipment: Shipments? = nil) {
            
            self.shipment = shipment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                shipment = try container.decode(Shipments.self, forKey: .shipment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipment, forKey: .shipment)
            
            
        }
        
    }
}
