

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: BeneficiaryModeDetails
        Used By: Payment
    */
    class BeneficiaryModeDetails: Codable {
        
        public var accountNo: String?
        
        public var address: String?
        
        public var mobile: String?
        
        public var bankName: String?
        
        public var comment: String?
        
        public var ifscCode: String?
        
        public var email: String?
        
        public var vpa: String?
        
        public var branchName: String?
        
        public var accountHolder: String?
        
        public var wallet: String?
        
        public var beneficiaryId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountNo = "account_no"
            
            case address = "address"
            
            case mobile = "mobile"
            
            case bankName = "bank_name"
            
            case comment = "comment"
            
            case ifscCode = "ifsc_code"
            
            case email = "email"
            
            case vpa = "vpa"
            
            case branchName = "branch_name"
            
            case accountHolder = "account_holder"
            
            case wallet = "wallet"
            
            case beneficiaryId = "beneficiary_id"
            
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, address: String? = nil, bankName: String? = nil, beneficiaryId: String? = nil, branchName: String? = nil, comment: String? = nil, email: String? = nil, ifscCode: String? = nil, mobile: String? = nil, vpa: String? = nil, wallet: String? = nil) {
            
            self.accountNo = accountNo
            
            self.address = address
            
            self.mobile = mobile
            
            self.bankName = bankName
            
            self.comment = comment
            
            self.ifscCode = ifscCode
            
            self.email = email
            
            self.vpa = vpa
            
            self.branchName = branchName
            
            self.accountHolder = accountHolder
            
            self.wallet = wallet
            
            self.beneficiaryId = beneficiaryId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                accountNo = try container.decode(String.self, forKey: .accountNo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                address = try container.decode(String.self, forKey: .address)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mobile = try container.decode(String.self, forKey: .mobile)
            
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
                comment = try container.decode(String.self, forKey: .comment)
            
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
                email = try container.decode(String.self, forKey: .email)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                vpa = try container.decode(String.self, forKey: .vpa)
            
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
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                wallet = try container.decode(String.self, forKey: .wallet)
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            try? container.encodeIfPresent(wallet, forKey: .wallet)
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
        }
        
    }
}
