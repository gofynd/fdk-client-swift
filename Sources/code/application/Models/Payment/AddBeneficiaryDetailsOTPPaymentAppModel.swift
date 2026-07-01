

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AddBeneficiaryDetailsOTP
        Used By: Payment
    */
    class AddBeneficiaryDetailsOTP: Codable {
        
        public var orderId: String
        
        public var shipmentId: String?
        
        public var details: BankDetailsForOTP
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case shipmentId = "shipment_id"
            
            case details = "details"
            
        }

        public init(details: BankDetailsForOTP, orderId: String, shipmentId: String? = nil) {
            
            self.orderId = orderId
            
            self.shipmentId = shipmentId
            
            self.details = details
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            
            
            
            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            details = try container.decode(BankDetailsForOTP.self, forKey: .details)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
        }
        
    }
}
