

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PayoutMoreAttributes
        Used By: Payment
    */

    class PayoutMoreAttributes: Codable {
        
        
        public var branchName: String?
        
        public var city: String?
        
        public var accountNo: String?
        
        public var country: String?
        
        public var state: String?
        
        public var accountHolder: String?
        
        public var ifscCode: String?
        
        public var accountType: String?
        
        public var bankName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case branchName = "branch_name"
            
            case city = "city"
            
            case accountNo = "account_no"
            
            case country = "country"
            
            case state = "state"
            
            case accountHolder = "account_holder"
            
            case ifscCode = "ifsc_code"
            
            case accountType = "account_type"
            
            case bankName = "bank_name"
            
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, accountType: String? = nil, bankName: String? = nil, branchName: String? = nil, city: String? = nil, country: String? = nil, ifscCode: String? = nil, state: String? = nil) {
            
            self.branchName = branchName
            
            self.city = city
            
            self.accountNo = accountNo
            
            self.country = country
            
            self.state = state
            
            self.accountHolder = accountHolder
            
            self.ifscCode = ifscCode
            
            self.accountType = accountType
            
            self.bankName = bankName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    branchName = try container.decode(String.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
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
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
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
                    ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    accountType = try container.decode(String.self, forKey: .accountType)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(branchName, forKey: .branchName)
            
            
            
            
            try? container.encode(city, forKey: .city)
            
            
            
            
            try? container.encode(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encode(country, forKey: .country)
            
            
            
            
            try? container.encode(state, forKey: .state)
            
            
            
            
            try? container.encode(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encode(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encode(accountType, forKey: .accountType)
            
            
            
            
            try? container.encode(bankName, forKey: .bankName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PayoutMoreAttributes
        Used By: Payment
    */

    class PayoutMoreAttributes: Codable {
        
        
        public var branchName: String?
        
        public var city: String?
        
        public var accountNo: String?
        
        public var country: String?
        
        public var state: String?
        
        public var accountHolder: String?
        
        public var ifscCode: String?
        
        public var accountType: String?
        
        public var bankName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case branchName = "branch_name"
            
            case city = "city"
            
            case accountNo = "account_no"
            
            case country = "country"
            
            case state = "state"
            
            case accountHolder = "account_holder"
            
            case ifscCode = "ifsc_code"
            
            case accountType = "account_type"
            
            case bankName = "bank_name"
            
        }

        public init(accountHolder: String? = nil, accountNo: String? = nil, accountType: String? = nil, bankName: String? = nil, branchName: String? = nil, city: String? = nil, country: String? = nil, ifscCode: String? = nil, state: String? = nil) {
            
            self.branchName = branchName
            
            self.city = city
            
            self.accountNo = accountNo
            
            self.country = country
            
            self.state = state
            
            self.accountHolder = accountHolder
            
            self.ifscCode = ifscCode
            
            self.accountType = accountType
            
            self.bankName = bankName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    branchName = try container.decode(String.self, forKey: .branchName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    city = try container.decode(String.self, forKey: .city)
                
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
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    state = try container.decode(String.self, forKey: .state)
                
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
                    ifscCode = try container.decode(String.self, forKey: .ifscCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    accountType = try container.decode(String.self, forKey: .accountType)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(branchName, forKey: .branchName)
            
            
            
            
            try? container.encode(city, forKey: .city)
            
            
            
            
            try? container.encode(accountNo, forKey: .accountNo)
            
            
            
            
            try? container.encode(country, forKey: .country)
            
            
            
            
            try? container.encode(state, forKey: .state)
            
            
            
            
            try? container.encode(accountHolder, forKey: .accountHolder)
            
            
            
            
            try? container.encode(ifscCode, forKey: .ifscCode)
            
            
            
            
            try? container.encode(accountType, forKey: .accountType)
            
            
            
            
            try? container.encode(bankName, forKey: .bankName)
            
            
        }
        
    }
}


