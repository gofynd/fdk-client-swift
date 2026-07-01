

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: BeneficiaryDetails
        Used By: Payment
    */
    class BeneficiaryDetails: Codable {
        
        public var accountHolder: String?
        
        public var accountNo: String?
        
        public var ifscCode: String?
        
        public var upi: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountHolder = "account_holder"
            
            case accountNo = "account_no"
            
            case ifscCode = "ifsc_code"
            
            case upi = "upi"
            
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, ifscCode: String? = nil, upi: String? = nil) {
            
            self.accountHolder = accountHolder
            
            self.accountNo = accountNo
            
            self.ifscCode = ifscCode
            
            self.upi = upi
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                accountNo = try container.decode(String.self, forKey: .accountNo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                upi = try container.decode(String.self, forKey: .upi)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            try? container.encodeIfPresent(upi, forKey: .upi)
            
            
        }
        
    }
}
