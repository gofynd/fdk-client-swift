

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: BankDetailsForOTP
        Used By: Payment
    */

    class BankDetailsForOTP: Codable {
        
        
        public var ifscCode: String
        
        public var accountNo: String
        
        public var branchName: String
        
        public var bankName: String
        
        public var accountHolder: String
        
        public var address: String?
        
        public var comment: String?
        
        public var email: String?
        
        public var mobile: String?
        
        public var beneficiaryId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ifscCode = "ifsc_code"
            
            case accountNo = "account_no"
            
            case branchName = "branch_name"
            
            case bankName = "bank_name"
            
            case accountHolder = "account_holder"
            
            case address = "address"
            
            case comment = "comment"
            
            case email = "email"
            
            case mobile = "mobile"
            
            case beneficiaryId = "beneficiary_id"
            
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, beneficiaryId: String? = nil, branchName: String, comment: String? = nil, email: String? = nil, ifscCode: String, mobile: String? = nil) {
            
            self.ifscCode = ifscCode
            
            self.accountNo = accountNo
            
            self.branchName = branchName
            
            self.bankName = bankName
            
            self.accountHolder = accountHolder
            
            self.address = address
            
            self.comment = comment
            
            self.email = email
            
            self.mobile = mobile
            
            self.beneficiaryId = beneficiaryId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                branchName = try container.decode(String.self, forKey: .branchName)
                
            
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
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
                    email = try container.decode(String.self, forKey: .email)
                
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
                    beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: BankDetailsForOTP
        Used By: Payment
    */

    class BankDetailsForOTP: Codable {
        
        
        public var ifscCode: String
        
        public var accountNo: String
        
        public var branchName: String
        
        public var bankName: String
        
        public var accountHolder: String
        
        public var address: String?
        
        public var comment: String?
        
        public var email: String?
        
        public var mobile: String?
        
        public var beneficiaryId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ifscCode = "ifsc_code"
            
            case accountNo = "account_no"
            
            case branchName = "branch_name"
            
            case bankName = "bank_name"
            
            case accountHolder = "account_holder"
            
            case address = "address"
            
            case comment = "comment"
            
            case email = "email"
            
            case mobile = "mobile"
            
            case beneficiaryId = "beneficiary_id"
            
        }

        public init(accountHolder: String, accountNo: String, address: String? = nil, bankName: String, beneficiaryId: String? = nil, branchName: String, comment: String? = nil, email: String? = nil, ifscCode: String, mobile: String? = nil) {
            
            self.ifscCode = ifscCode
            
            self.accountNo = accountNo
            
            self.branchName = branchName
            
            self.bankName = bankName
            
            self.accountHolder = accountHolder
            
            self.address = address
            
            self.comment = comment
            
            self.email = email
            
            self.mobile = mobile
            
            self.beneficiaryId = beneficiaryId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
            
            
            
                accountNo = try container.decode(String.self, forKey: .accountNo)
                
            
            
            
                branchName = try container.decode(String.self, forKey: .branchName)
                
            
            
            
                bankName = try container.decode(String.self, forKey: .bankName)
                
            
            
            
                accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
            
            
            
                do {
                    address = try container.decode(String.self, forKey: .address)
                
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
                    email = try container.decode(String.self, forKey: .email)
                
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
                    beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            
            try? container.encodeIfPresent(comment, forKey: .comment)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(mobile, forKey: .mobile)
            
            
            
            
            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)
            
            
        }
        
    }
}


