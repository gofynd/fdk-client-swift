

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: BeneficiaryData
        Used By: Payment
    */
    class BeneficiaryData: Codable {
        
        public var upi: [UPIBeneficiary]?
        
        public var bank: [BankBeneficiary]?
        

        public enum CodingKeys: String, CodingKey {
            
            case upi = "upi"
            
            case bank = "bank"
            
        }

        public init(bank: [BankBeneficiary]? = nil, upi: [UPIBeneficiary]? = nil) {
            
            self.upi = upi
            
            self.bank = bank
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                upi = try container.decode([UPIBeneficiary].self, forKey: .upi)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                bank = try container.decode([BankBeneficiary].self, forKey: .bank)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(upi, forKey: .upi)
            
            
            
            try? container.encodeIfPresent(bank, forKey: .bank)
            
            
        }
        
    }
}
