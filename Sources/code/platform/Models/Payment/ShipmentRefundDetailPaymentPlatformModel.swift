

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ShipmentRefundDetail
        Used By: Payment
    */

    class ShipmentRefundDetail: Codable {
        
        
        public var orderId: String
        
        public var transferMode: String
        
        public var beneficiaryId: String
        
        public var shipmentIds: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case transferMode = "transfer_mode"
            
            case beneficiaryId = "beneficiary_id"
            
            case shipmentIds = "shipment_ids"
            
        }

        public init(beneficiaryId: String, orderId: String, shipmentIds: [String]? = nil, transferMode: String) {
            
            self.orderId = orderId
            
            self.transferMode = transferMode
            
            self.beneficiaryId = beneficiaryId
            
            self.shipmentIds = shipmentIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
            
            
            
                do {
                    shipmentIds = try container.decode([String].self, forKey: .shipmentIds)
                
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
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ShipmentRefundDetail
        Used By: Payment
    */

    class ShipmentRefundDetail: Codable {
        
        
        public var orderId: String
        
        public var transferMode: String
        
        public var beneficiaryId: String
        
        public var shipmentIds: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case transferMode = "transfer_mode"
            
            case beneficiaryId = "beneficiary_id"
            
            case shipmentIds = "shipment_ids"
            
        }

        public init(beneficiaryId: String, orderId: String, shipmentIds: [String]? = nil, transferMode: String) {
            
            self.orderId = orderId
            
            self.transferMode = transferMode
            
            self.beneficiaryId = beneficiaryId
            
            self.shipmentIds = shipmentIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                transferMode = try container.decode(String.self, forKey: .transferMode)
                
            
            
            
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
            
            
            
                do {
                    shipmentIds = try container.decode([String].self, forKey: .shipmentIds)
                
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
            
            
        }
        
    }
}


