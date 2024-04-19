

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AddBeneficiaryDetailsRequest
        Used By: Payment
    */
    class AddBeneficiaryDetailsRequest: Codable {
        
        public var delights: Bool
        
        public var shipmentId: String
        
        public var details: BeneficiaryModeDetails
        
        public var otp: String?
        
        public var orderId: String
        
        public var transferMode: String
        
        public var requestId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case delights = "delights"
            
            case shipmentId = "shipment_id"
            
            case details = "details"
            
            case otp = "otp"
            
            case orderId = "order_id"
            
            case transferMode = "transfer_mode"
            
            case requestId = "request_id"
            
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String? = nil, requestId: String? = nil, shipmentId: String, transferMode: String) {
            
            self.delights = delights
            
            self.shipmentId = shipmentId
            
            self.details = details
            
            self.otp = otp
            
            self.orderId = orderId
            
            self.transferMode = transferMode
            
            self.requestId = requestId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            delights = try container.decode(Bool.self, forKey: .delights)
            
            
            
            
            shipmentId = try container.decode(String.self, forKey: .shipmentId)
            
            
            
            
            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)
            
            
            
            
            do {
                otp = try container.decode(String.self, forKey: .otp)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            
            
            
            transferMode = try container.decode(String.self, forKey: .transferMode)
            
            
            
            
            do {
                requestId = try container.decode(String.self, forKey: .requestId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(delights, forKey: .delights)
            
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            
            try? container.encodeIfPresent(otp, forKey: .otp)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
            
            
            
            
            try? container.encodeIfPresent(requestId, forKey: .requestId)
            
            
        }
        
    }
}
