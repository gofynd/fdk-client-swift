

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentData
        Used By: Order
    */

    class ShipmentData: Codable {
        
        
        public var shipmentData: ShipmentConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentData = "shipment_data"
            
        }

        public init(shipmentData: ShipmentConfig) {
            
            self.shipmentData = shipmentData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentData = try container.decode(ShipmentConfig.self, forKey: .shipmentData)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentData, forKey: .shipmentData)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentData
        Used By: Order
    */

    class ShipmentData: Codable {
        
        
        public var shipmentData: ShipmentConfig
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentData = "shipment_data"
            
        }

        public init(shipmentData: ShipmentConfig) {
            
            self.shipmentData = shipmentData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentData = try container.decode(ShipmentConfig.self, forKey: .shipmentData)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentData, forKey: .shipmentData)
            
            
        }
        
    }
}


