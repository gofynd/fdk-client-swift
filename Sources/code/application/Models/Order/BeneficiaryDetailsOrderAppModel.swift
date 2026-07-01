

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: BeneficiaryDetails
        Used By: Order
    */
    class BeneficiaryDetails: Codable {
        
        public var accountHolder: String?
        
        public var accountNo: String?
        
        public var bankName: String?
        
        public var beneficiaryId: String?
        
        public var branchName: String?
        
        public var isVerified: Bool?
        
        public var vpaAddress: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountHolder = "account_holder"
            
            case accountNo = "account_no"
            
            case bankName = "bank_name"
            
            case beneficiaryId = "beneficiary_id"
            
            case branchName = "branch_name"
            
            case isVerified = "is_verified"
            
            case vpaAddress = "vpa_address"
            
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, bankName: String? = nil, beneficiaryId: String? = nil, branchName: String? = nil, isVerified: Bool? = nil, vpaAddress: String? = nil) {
            
            self.accountHolder = accountHolder
            
            self.accountNo = accountNo
            
            self.bankName = bankName
            
            self.beneficiaryId = beneficiaryId
            
            self.branchName = branchName
            
            self.isVerified = isVerified
            
            self.vpaAddress = vpaAddress
            
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
                bankName = try container.decode(String.self, forKey: .bankName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                branchName = try container.decode(String.self, forKey: .branchName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isVerified = try container.decode(Bool.self, forKey: .isVerified)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                vpaAddress = try container.decode(String.self, forKey: .vpaAddress)
            
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
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            try? container.encodeIfPresent(isVerified, forKey: .isVerified)
            
            
            
            try? container.encodeIfPresent(vpaAddress, forKey: .vpaAddress)
            
            
        }
        
    }
}
