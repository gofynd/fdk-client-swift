

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ShipmentResponse
        Used By: Logistic
    */
    class ShipmentResponse: Codable {
        
        public var shipments: [ShipmentItem]?
        
        public var isCodAvailable: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipments = "shipments"
            
            case isCodAvailable = "is_cod_available"
            
        }

        public init(isCodAvailable: Bool? = nil, shipments: [ShipmentItem]? = nil) {
            
            self.shipments = shipments
            
            self.isCodAvailable = isCodAvailable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                shipments = try container.decode([ShipmentItem].self, forKey: .shipments)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isCodAvailable = try container.decode(Bool.self, forKey: .isCodAvailable)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
            
            try? container.encodeIfPresent(isCodAvailable, forKey: .isCodAvailable)
            
            
        }
        
    }
}
