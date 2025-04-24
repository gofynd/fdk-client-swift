

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ShipmentRefund
        Used By: Payment
    */
    class ShipmentRefund: Codable {
        
        public var shipmentId: String
        
        public var orderId: String
        
        public var transferMode: String
        
        public var beneficiaryId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case shipmentId = "shipment_id"
            
            case orderId = "order_id"
            
            case transferMode = "transfer_mode"
            
            case beneficiaryId = "beneficiary_id"
            
        }

        public init(beneficiaryId: String? = nil, orderId: String, shipmentId: String, transferMode: String) {
            
            self.shipmentId = shipmentId
            
            self.orderId = orderId
            
            self.transferMode = transferMode
            
            self.beneficiaryId = beneficiaryId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            shipmentId = try container.decode(String.self, forKey: .shipmentId)
            
            
            
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            
            
            
            transferMode = try container.decode(String.self, forKey: .transferMode)
            
            
            
            
            do {
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
        }
        
    }
}
