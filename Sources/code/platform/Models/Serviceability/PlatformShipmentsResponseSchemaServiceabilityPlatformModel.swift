

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PlatformShipmentsResponseSchema
        Used By: Serviceability
    */

    class PlatformShipmentsResponseSchema: Codable {
        
        
        public var isCodAvailable: Bool
        
        public var shipments: [PlatformShipmentsSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case isCodAvailable = "is_cod_available"
            
            case shipments = "shipments"
            
        }

        public init(isCodAvailable: Bool, shipments: [PlatformShipmentsSchema]) {
            
            self.isCodAvailable = isCodAvailable
            
            self.shipments = shipments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)
                
            
            
            
                shipments = try container.decode([PlatformShipmentsSchema].self, forKey: .shipments)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PlatformShipmentsResponseSchema
        Used By: Serviceability
    */

    class PlatformShipmentsResponseSchema: Codable {
        
        
        public var isCodAvailable: Bool
        
        public var shipments: [PlatformShipmentsSchema]
        

        public enum CodingKeys: String, CodingKey {
            
            case isCodAvailable = "is_cod_available"
            
            case shipments = "shipments"
            
        }

        public init(isCodAvailable: Bool, shipments: [PlatformShipmentsSchema]) {
            
            self.isCodAvailable = isCodAvailable
            
            self.shipments = shipments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)
                
            
            
            
                shipments = try container.decode([PlatformShipmentsSchema].self, forKey: .shipments)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
        }
        
    }
}


