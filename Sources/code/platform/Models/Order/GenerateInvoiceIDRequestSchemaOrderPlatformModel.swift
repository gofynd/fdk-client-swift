

import Foundation


public extension PlatformClient.Order {
    /*
        Model: GenerateInvoiceIDRequestSchema
        Used By: Order
    */

    class GenerateInvoiceIDRequestSchema: Codable {
        
        
        public var shipmentIds: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentIds = "shipment_ids"
            
        }

        public init(shipmentIds: [String]) {
            
            self.shipmentIds = shipmentIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentIds = try container.decode([String].self, forKey: .shipmentIds)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: GenerateInvoiceIDRequestSchema
        Used By: Order
    */

    class GenerateInvoiceIDRequestSchema: Codable {
        
        
        public var shipmentIds: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentIds = "shipment_ids"
            
        }

        public init(shipmentIds: [String]) {
            
            self.shipmentIds = shipmentIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                shipmentIds = try container.decode([String].self, forKey: .shipmentIds)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)
            
            
        }
        
    }
}


