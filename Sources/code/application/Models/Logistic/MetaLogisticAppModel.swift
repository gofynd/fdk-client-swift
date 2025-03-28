

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: Meta
        Used By: Logistic
    */
    class Meta: Codable {
        
        public var shipmentCost: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentCost = "shipment_cost"
            
        }

        public init(shipmentCost: Double? = nil) {
            
            self.shipmentCost = shipmentCost
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                shipmentCost = try container.decode(Double.self, forKey: .shipmentCost)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(shipmentCost, forKey: .shipmentCost)
            
            
        }
        
    }
}
