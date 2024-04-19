

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoiceRetryShipmentData
        Used By: Order
    */

    class EInvoiceRetryShipmentData: Codable {
        
        
        public var shipmentId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
        }

        public init(shipmentId: String) {
            
            self.shipmentId = shipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: EInvoiceRetryShipmentData
        Used By: Order
    */

    class EInvoiceRetryShipmentData: Codable {
        
        
        public var shipmentId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
        }

        public init(shipmentId: String) {
            
            self.shipmentId = shipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
        }
        
    }
}


