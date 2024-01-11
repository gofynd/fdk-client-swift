

import Foundation


public extension PlatformClient.Order {
    /*
        Model: EInvoiceRetryShipmentData
        Used By: Order
    */

    class EInvoiceRetryShipmentData: Codable {
        
        
        public var shipmentId: String
        
        public var einvoiceType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case einvoiceType = "einvoice_type"
            
        }

        public init(einvoiceType: String, shipmentId: String) {
            
            self.shipmentId = shipmentId
            
            self.einvoiceType = einvoiceType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                einvoiceType = try container.decode(String.self, forKey: .einvoiceType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(einvoiceType, forKey: .einvoiceType)
            
            
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
        
        public var einvoiceType: String
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case einvoiceType = "einvoice_type"
            
        }

        public init(einvoiceType: String, shipmentId: String) {
            
            self.shipmentId = shipmentId
            
            self.einvoiceType = einvoiceType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                einvoiceType = try container.decode(String.self, forKey: .einvoiceType)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(einvoiceType, forKey: .einvoiceType)
            
            
        }
        
    }
}


