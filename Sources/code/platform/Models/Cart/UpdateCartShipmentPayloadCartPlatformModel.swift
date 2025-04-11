

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: UpdateCartShipmentPayload
        Used By: Cart
    */

    class UpdateCartShipmentPayload: Codable {
        
        
        public var shipments: [UpdateCartShipmentItem]
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
        }

        public init(shipments: [UpdateCartShipmentItem]) {
            
            self.shipments = shipments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipments = try container.decode([UpdateCartShipmentItem].self, forKey: .shipments)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
        }
        
    }
}


