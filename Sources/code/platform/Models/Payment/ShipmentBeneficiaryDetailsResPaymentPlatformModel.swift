

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ShipmentBeneficiaryDetailsRes
        Used By: Payment
    */

    class ShipmentBeneficiaryDetailsRes: Codable {
        
        
        public var success: Bool?
        
        public var shipmentId: String?
        
        public var transferMode: TransferMode?
        
        public var message: String?
        
        public var beneficiaryDetails: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case shipmentId = "shipment_id"
            
            case transferMode = "transfer_mode"
            
            case message = "message"
            
            case beneficiaryDetails = "beneficiary_details"
            
        }

        public init(beneficiaryDetails: String? = nil, message: String? = nil, shipmentId: String? = nil, success: Bool? = nil, transferMode: TransferMode? = nil) {
            
            self.success = success
            
            self.shipmentId = shipmentId
            
            self.transferMode = transferMode
            
            self.message = message
            
            self.beneficiaryDetails = beneficiaryDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transferMode = try container.decode(TransferMode.self, forKey: .transferMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    beneficiaryDetails = try container.decode(String.self, forKey: .beneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ShipmentBeneficiaryDetailsRes
        Used By: Payment
    */

    class ShipmentBeneficiaryDetailsRes: Codable {
        
        
        public var success: Bool?
        
        public var shipmentId: String?
        
        public var transferMode: TransferMode?
        
        public var message: String?
        
        public var beneficiaryDetails: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case shipmentId = "shipment_id"
            
            case transferMode = "transfer_mode"
            
            case message = "message"
            
            case beneficiaryDetails = "beneficiary_details"
            
        }

        public init(beneficiaryDetails: String? = nil, message: String? = nil, shipmentId: String? = nil, success: Bool? = nil, transferMode: TransferMode? = nil) {
            
            self.success = success
            
            self.shipmentId = shipmentId
            
            self.transferMode = transferMode
            
            self.message = message
            
            self.beneficiaryDetails = beneficiaryDetails
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    shipmentId = try container.decode(String.self, forKey: .shipmentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    transferMode = try container.decode(TransferMode.self, forKey: .transferMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    beneficiaryDetails = try container.decode(String.self, forKey: .beneficiaryDetails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)
            
            
        }
        
    }
}


