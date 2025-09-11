

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AddBeneficiaryRequestDetails
        Used By: Payment
    */
    class AddBeneficiaryRequestDetails: Codable {
        
        public var details: BeneficiaryDetails?
        
        public var orderId: String?
        
        public var shipmentId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case details = "details"
            
            case orderId = "order_id"
            
            case shipmentId = "shipment_id"
            
        }

        public init(details: BeneficiaryDetails? = nil, orderId: String? = nil, shipmentId: String? = nil) {
            
            self.details = details
            
            self.orderId = orderId
            
            self.shipmentId = shipmentId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                details = try container.decode(BeneficiaryDetails.self, forKey: .details)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderId = try container.decode(String.self, forKey: .orderId)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
            
            
        }
        
    }
}
