

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ShipmentCourierPartnerResult
        Used By: Logistic
    */
    class ShipmentCourierPartnerResult: Codable {
        
        public var courierPartners: [CourierPartners]?
        
        public var shipments: [ShipmentCourierPartners]?
        

        public enum CodingKeys: String, CodingKey {
            
            case courierPartners = "courier_partners"
            
            case shipments = "shipments"
            
        }

        public init(courierPartners: [CourierPartners]? = nil, shipments: [ShipmentCourierPartners]? = nil) {
            
            self.courierPartners = courierPartners
            
            self.shipments = shipments
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                courierPartners = try container.decode([CourierPartners].self, forKey: .courierPartners)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                shipments = try container.decode([ShipmentCourierPartners].self, forKey: .shipments)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(courierPartners, forKey: .courierPartners)
            
            
            
            try? container.encodeIfPresent(shipments, forKey: .shipments)
            
            
        }
        
    }
}
