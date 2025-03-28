

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: GenerateShipmentsAndCourierPartnerResponseSchema
        Used By: Logistic
    */
    class GenerateShipmentsAndCourierPartnerResponseSchema: Codable {
        
        public var shipments: [Shipments]
        
        public var isCodAvailable: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case isCodAvailable = "is_cod_available"
            
        }

        public init(isCodAvailable: Bool, shipments: [Shipments]) {
            
            self.shipments = shipments
            
            self.isCodAvailable = isCodAvailable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            shipments = try container.decode([Shipments].self, forKey: .shipments)
            
            
            
            
            isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
        }
        
    }
}
