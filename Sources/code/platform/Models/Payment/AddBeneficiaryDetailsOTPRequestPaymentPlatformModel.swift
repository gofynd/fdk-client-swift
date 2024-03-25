

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: AddBeneficiaryDetailsOTPRequest
        Used By: Payment
    */

    class AddBeneficiaryDetailsOTPRequest: Codable {
        
        
        public var transferMode: String?
        
        public var shipmentId: String?
        
        public var delights: Bool?
        
        public var orderId: String
        
        public var details: BankDetailsForOTP
        

        public enum CodingKeys: String, CodingKey {
            
            case transferMode = "transfer_mode"
            
            case shipmentId = "shipment_id"
            
            case delights = "delights"
            
            case orderId = "order_id"
            
            case details = "details"
            
        }

        public init(delights: Bool? = nil, details: BankDetailsForOTP, orderId: String, shipmentId: String? = nil, transferMode: String? = nil) {
            
            self.transferMode = transferMode
            
            self.shipmentId = shipmentId
            
            self.delights = delights
            
            self.orderId = orderId
            
            self.details = details
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    transferMode = try container.decode(String.self, forKey: .transferMode)
                
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
                    delights = try container.decode(Bool.self, forKey: .delights)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                details = try container.decode(BankDetailsForOTP.self, forKey: .details)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(delights, forKey: .delights)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: AddBeneficiaryDetailsOTPRequest
        Used By: Payment
    */

    class AddBeneficiaryDetailsOTPRequest: Codable {
        
        
        public var transferMode: String?
        
        public var shipmentId: String?
        
        public var delights: Bool?
        
        public var orderId: String
        
        public var details: BankDetailsForOTP
        

        public enum CodingKeys: String, CodingKey {
            
            case transferMode = "transfer_mode"
            
            case shipmentId = "shipment_id"
            
            case delights = "delights"
            
            case orderId = "order_id"
            
            case details = "details"
            
        }

        public init(delights: Bool? = nil, details: BankDetailsForOTP, orderId: String, shipmentId: String? = nil, transferMode: String? = nil) {
            
            self.transferMode = transferMode
            
            self.shipmentId = shipmentId
            
            self.delights = delights
            
            self.orderId = orderId
            
            self.details = details
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    transferMode = try container.decode(String.self, forKey: .transferMode)
                
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
                    delights = try container.decode(Bool.self, forKey: .delights)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                details = try container.decode(BankDetailsForOTP.self, forKey: .details)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(delights, forKey: .delights)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
        }
        
    }
}


