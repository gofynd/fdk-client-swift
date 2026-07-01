

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: RefundModeTransitionBeneficiaryData
        Used By: Order
    */
    class RefundModeTransitionBeneficiaryData: Codable {
        
        public var beneficiaryId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case beneficiaryId = "beneficiary_id"
            
        }

        public init(beneficiaryId: String? = nil) {
            
            self.beneficiaryId = beneficiaryId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
        }
        
    }
}
