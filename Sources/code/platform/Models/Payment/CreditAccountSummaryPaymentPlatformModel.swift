

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CreditAccountSummary
        Used By: Payment
    */

    class CreditAccountSummary: Codable {
        
        
        public var accountId: String
        
        public var status: String
        
        public var redeemableBalance: UserCreditSchema?
        
        public var availableBalance: UserCreditSchema?
        
        public var amountOnHold: [UserCreditSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountId = "account_id"
            
            case status = "status"
            
            case redeemableBalance = "redeemable_balance"
            
            case availableBalance = "available_balance"
            
            case amountOnHold = "amount_on_hold"
            
        }

        public init(accountId: String, amountOnHold: [UserCreditSchema]? = nil, availableBalance: UserCreditSchema? = nil, redeemableBalance: UserCreditSchema? = nil, status: String) {
            
            self.accountId = accountId
            
            self.status = status
            
            self.redeemableBalance = redeemableBalance
            
            self.availableBalance = availableBalance
            
            self.amountOnHold = amountOnHold
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    redeemableBalance = try container.decode(UserCreditSchema.self, forKey: .redeemableBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availableBalance = try container.decode(UserCreditSchema.self, forKey: .availableBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountOnHold = try container.decode([UserCreditSchema].self, forKey: .amountOnHold)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(redeemableBalance, forKey: .redeemableBalance)
            
            
            
            
            try? container.encodeIfPresent(availableBalance, forKey: .availableBalance)
            
            
            
            
            try? container.encodeIfPresent(amountOnHold, forKey: .amountOnHold)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CreditAccountSummary
        Used By: Payment
    */

    class CreditAccountSummary: Codable {
        
        
        public var accountId: String
        
        public var status: String
        
        public var redeemableBalance: UserCreditSchema?
        
        public var availableBalance: UserCreditSchema?
        
        public var amountOnHold: [UserCreditSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case accountId = "account_id"
            
            case status = "status"
            
            case redeemableBalance = "redeemable_balance"
            
            case availableBalance = "available_balance"
            
            case amountOnHold = "amount_on_hold"
            
        }

        public init(accountId: String, amountOnHold: [UserCreditSchema]? = nil, availableBalance: UserCreditSchema? = nil, redeemableBalance: UserCreditSchema? = nil, status: String) {
            
            self.accountId = accountId
            
            self.status = status
            
            self.redeemableBalance = redeemableBalance
            
            self.availableBalance = availableBalance
            
            self.amountOnHold = amountOnHold
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                accountId = try container.decode(String.self, forKey: .accountId)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                do {
                    redeemableBalance = try container.decode(UserCreditSchema.self, forKey: .redeemableBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    availableBalance = try container.decode(UserCreditSchema.self, forKey: .availableBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amountOnHold = try container.decode([UserCreditSchema].self, forKey: .amountOnHold)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(accountId, forKey: .accountId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(redeemableBalance, forKey: .redeemableBalance)
            
            
            
            
            try? container.encodeIfPresent(availableBalance, forKey: .availableBalance)
            
            
            
            
            try? container.encodeIfPresent(amountOnHold, forKey: .amountOnHold)
            
            
        }
        
    }
}


