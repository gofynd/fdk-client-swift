

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: SetDefaultBeneficiary
        Used By: Payment
    */
    class SetDefaultBeneficiary: Codable {
        
        public var orderId: String
        
        public var beneficiaryId: String
        
        public var shipmentId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case beneficiaryId = "beneficiary_id"
            
            case shipmentId = "shipment_id"
            
        }

        public init(beneficiaryId: String, orderId: String, shipmentId: String? = nil) {
            
            self.orderId = orderId
            
            self.beneficiaryId = beneficiaryId
            
            self.shipmentId = shipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            
            
            
            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
            
            
            
            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
        }
        
    }
}
