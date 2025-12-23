

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: BankDetailsForOTP
        Used By: Payment
    */

    class BankDetailsForOTP: Codable {
        
        
        public var ifscCode: String?
        
        public var accountNo: String?
        
        public var branchName: String?
        
        public var bankName: String?
        
        public var accountHolder: String?
        
        public var upi: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ifscCode = "ifsc_code"
            
            case accountNo = "account_no"
            
            case branchName = "branch_name"
            
            case bankName = "bank_name"
            
            case accountHolder = "account_holder"
            
            case upi = "upi"
            
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, bankName: String? = nil, branchName: String? = nil, ifscCode: String? = nil, upi: String? = nil) {
            
            self.ifscCode = ifscCode
            
            self.accountNo = accountNo
            
            self.branchName = branchName
            
            self.bankName = bankName
            
            self.accountHolder = accountHolder
            
            self.upi = upi
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
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
                    branchName = try container.decode(String.self, forKey: .branchName)
                
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
                    accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
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
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(upi, forKey: .upi)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: BankDetailsForOTP
        Used By: Payment
    */

    class BankDetailsForOTP: Codable {
        
        
        public var ifscCode: String?
        
        public var accountNo: String?
        
        public var branchName: String?
        
        public var bankName: String?
        
        public var accountHolder: String?
        
        public var upi: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case ifscCode = "ifsc_code"
            
            case accountNo = "account_no"
            
            case branchName = "branch_name"
            
            case bankName = "bank_name"
            
            case accountHolder = "account_holder"
            
            case upi = "upi"
            
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, bankName: String? = nil, branchName: String? = nil, ifscCode: String? = nil, upi: String? = nil) {
            
            self.ifscCode = ifscCode
            
            self.accountNo = accountNo
            
            self.branchName = branchName
            
            self.bankName = bankName
            
            self.accountHolder = accountHolder
            
            self.upi = upi
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
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
                    branchName = try container.decode(String.self, forKey: .branchName)
                
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
                    accountHolder = try container.decode(String.self, forKey: .accountHolder)
                
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
            
            
            
            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encodeIfPresent(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encodeIfPresent(branchName, forKey: .branchName)
            
            
            
            
            try? container.encodeIfPresent(bankName, forKey: .bankName)
            
            
            
            
            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encodeIfPresent(upi, forKey: .upi)
            
            
        }
        
    }
}


