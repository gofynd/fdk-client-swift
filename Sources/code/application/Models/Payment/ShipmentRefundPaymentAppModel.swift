

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ShipmentRefund
        Used By: Payment
    */
    class ShipmentRefund: Codable {
        
        public var orderId: String
        
        public var transferMode: String
        
        public var beneficiaryId: String?
        
        public var shipmentIds: [String]
        
        public var meta: ShipmentRefundRequestMeta?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case transferMode = "transfer_mode"
            
            case beneficiaryId = "beneficiary_id"
            
            case shipmentIds = "shipment_ids"
            
            case meta = "meta"
            
        }

        public init(beneficiaryId: String? = nil, meta: ShipmentRefundRequestMeta? = nil, orderId: String, shipmentIds: [String], transferMode: String) {
            
            self.orderId = orderId
            
            self.transferMode = transferMode
            
            self.beneficiaryId = beneficiaryId
            
            self.shipmentIds = shipmentIds
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            
            
            
            transferMode = try container.decode(String.self, forKey: .transferMode)
            
            
            
            
            do {
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            shipmentIds = try container.decode([String].self, forKey: .shipmentIds)
            
            
            
            
            do {
                meta = try container.decode(ShipmentRefundRequestMeta.self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            try? container.encodeIfPresent(shipmentIds, forKey: .shipmentIds)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
