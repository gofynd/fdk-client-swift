

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: AddBeneficiaryDetailsOTP
        Used By: Payment
    */
    class AddBeneficiaryDetailsOTP: Codable {
        
        public var orderId: String
        
        public var requestHash: String?
        
        public var details: BankDetailsForOTP
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
            case requestHash = "request_hash"
            
            case details = "details"
            
        }

        public init(details: BankDetailsForOTP, orderId: String, requestHash: String? = nil) {
            
            self.orderId = orderId
            
            self.requestHash = requestHash
            
            self.details = details
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            
            
            
            do {
                requestHash = try container.decode(String.self, forKey: .requestHash)
            
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
            
            
            
            try? container.encodeIfPresent(requestHash, forKey: .requestHash)
            
            
            
            try? container.encodeIfPresent(details, forKey: .details)
            
            
        }
        
    }
}
