

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: SelectedRefundOptionResponse
        Used By: Payment
    */

    class SelectedRefundOptionResponse: Codable {
        
        
        public var transferMode: TransferMode
        
        public var shipmentId: String
        
        public var message: String
        
        public var success: Bool
        
        public var beneficiaryDetails: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case transferMode = "transfer_mode"
            
            case shipmentId = "shipment_id"
            
            case message = "message"
            
            case success = "success"
            
            case beneficiaryDetails = "beneficiary_details"
            
        }

        public init(beneficiaryDetails: [String: Any]? = nil, message: String, shipmentId: String, success: Bool, transferMode: TransferMode) {
            
            self.transferMode = transferMode
            
            self.shipmentId = shipmentId
            
            self.message = message
            
            self.success = success
            
            self.beneficiaryDetails = beneficiaryDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                transferMode = try container.decode(TransferMode.self, forKey: .transferMode)
                
            
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    beneficiaryDetails = try container.decode([String: Any].self, forKey: .beneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: SelectedRefundOptionResponse
        Used By: Payment
    */

    class SelectedRefundOptionResponse: Codable {
        
        
        public var transferMode: TransferMode
        
        public var shipmentId: String
        
        public var message: String
        
        public var success: Bool
        
        public var beneficiaryDetails: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case transferMode = "transfer_mode"
            
            case shipmentId = "shipment_id"
            
            case message = "message"
            
            case success = "success"
            
            case beneficiaryDetails = "beneficiary_details"
            
        }

        public init(beneficiaryDetails: [String: Any]? = nil, message: String, shipmentId: String, success: Bool, transferMode: TransferMode) {
            
            self.transferMode = transferMode
            
            self.shipmentId = shipmentId
            
            self.message = message
            
            self.success = success
            
            self.beneficiaryDetails = beneficiaryDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                transferMode = try container.decode(TransferMode.self, forKey: .transferMode)
                
            
            
            
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    beneficiaryDetails = try container.decode([String: Any].self, forKey: .beneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)
            
            
        }
        
    }
}


