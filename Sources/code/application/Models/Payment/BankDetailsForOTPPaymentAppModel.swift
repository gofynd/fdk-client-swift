

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: BankDetailsForOTP
        Used By: Payment
    */
    class BankDetailsForOTP: Codable {
        
        public var accountNo: String
        
        public var bankName: String
        
        public var ifscCode: String
        
        public var branchName: String
        
        public var accountHolder: String
        
        public var email: String?
        
        public var beneficiaryId: String?
        
        public var address: String?
        
        public var mobile: String?
        
        public var comment: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountNo = "account_no"
            
            case bankName = "bank_name"
            
            case ifscCode = "ifsc_code"
            
            case branchName = "branch_name"
            
            case accountHolder = "account_holder"
            
            case email = "email"
            
            case beneficiaryId = "beneficiary_id"
            
            case address = "address"
            
            case mobile = "mobile"
            
            case comment = "comment"
            
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, beneficiaryId: String? = nil, branchName: String, comment: String? = nil, email: String? = nil, ifscCode: String, mobile: String? = nil) {
            
            self.accountNo = accountNo
            
            self.bankName = bankName
            
            self.ifscCode = ifscCode
            
            self.branchName = branchName
            
            self.accountHolder = accountHolder
            
            self.email = email
            
            self.beneficiaryId = beneficiaryId
            
            self.address = address
            
            self.mobile = mobile
            
            self.comment = comment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            accountNo = try container.decode(String.self, forKey: .accountNo)
            
            
            
            
            bankName = try container.decode(String.self, forKey: .bankName)
            
            
            
            
            ifscCode = try container.decode(String.self, forKey: .ifscCode)
            
            
            
            
            branchName = try container.decode(String.self, forKey: .branchName)
            
            
            
            
            accountHolder = try container.decode(String.self, forKey: .accountHolder)
            
            
            
            
            do {
                email = try container.decode(String.self, forKey: .email)
            
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
                comment = try container.decode(String.self, forKey: .comment)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
        }
        
    }
}
