

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: ValidateCustomerData
        Used By: Payment
    */

    class ValidateCustomerData: Codable {
        
        
        public var approved: Bool?
        
        public var buttonText: String?
        
        public var firstTransaction: Bool?
        
        public var message: String?
        
        public var amount: Int?
        
        public var userId: String?
        
        public var customerMobileNumber: String?
        
        public var totalCreditedBalance: Double?
        
        public var isCnLocked: Bool?
        
        public var totalLockedAmount: Double?
        
        public var allowedRedemptionAmount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case approved = "approved"
            
            case buttonText = "button_text"
            
            case firstTransaction = "first_transaction"
            
            case message = "message"
            
            case amount = "amount"
            
            case userId = "user_id"
            
            case customerMobileNumber = "customer_mobile_number"
            
            case totalCreditedBalance = "total_credited_balance"
            
            case isCnLocked = "is_cn_locked"
            
            case totalLockedAmount = "total_locked_amount"
            
            case allowedRedemptionAmount = "allowed_redemption_amount"
            
        }

        public init(allowedRedemptionAmount: Double? = nil, amount: Int? = nil, approved: Bool? = nil, buttonText: String? = nil, customerMobileNumber: String? = nil, firstTransaction: Bool? = nil, isCnLocked: Bool? = nil, message: String? = nil, totalCreditedBalance: Double? = nil, totalLockedAmount: Double? = nil, userId: String? = nil) {
            
            self.approved = approved
            
            self.buttonText = buttonText
            
            self.firstTransaction = firstTransaction
            
            self.message = message
            
            self.amount = amount
            
            self.userId = userId
            
            self.customerMobileNumber = customerMobileNumber
            
            self.totalCreditedBalance = totalCreditedBalance
            
            self.isCnLocked = isCnLocked
            
            self.totalLockedAmount = totalLockedAmount
            
            self.allowedRedemptionAmount = allowedRedemptionAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    approved = try container.decode(Bool.self, forKey: .approved)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buttonText = try container.decode(String.self, forKey: .buttonText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    firstTransaction = try container.decode(Bool.self, forKey: .firstTransaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalCreditedBalance = try container.decode(Double.self, forKey: .totalCreditedBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCnLocked = try container.decode(Bool.self, forKey: .isCnLocked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalLockedAmount = try container.decode(Double.self, forKey: .totalLockedAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowedRedemptionAmount = try container.decode(Double.self, forKey: .allowedRedemptionAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(approved, forKey: .approved)
            
            
            
            
            try? container.encodeIfPresent(buttonText, forKey: .buttonText)
            
            
            
            
            try? container.encodeIfPresent(firstTransaction, forKey: .firstTransaction)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(totalCreditedBalance, forKey: .totalCreditedBalance)
            
            
            
            
            try? container.encodeIfPresent(isCnLocked, forKey: .isCnLocked)
            
            
            
            
            try? container.encodeIfPresent(totalLockedAmount, forKey: .totalLockedAmount)
            
            
            
            
            try? container.encodeIfPresent(allowedRedemptionAmount, forKey: .allowedRedemptionAmount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: ValidateCustomerData
        Used By: Payment
    */

    class ValidateCustomerData: Codable {
        
        
        public var approved: Bool?
        
        public var buttonText: String?
        
        public var firstTransaction: Bool?
        
        public var message: String?
        
        public var amount: Int?
        
        public var userId: String?
        
        public var customerMobileNumber: String?
        
        public var totalCreditedBalance: Double?
        
        public var isCnLocked: Bool?
        
        public var totalLockedAmount: Double?
        
        public var allowedRedemptionAmount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case approved = "approved"
            
            case buttonText = "button_text"
            
            case firstTransaction = "first_transaction"
            
            case message = "message"
            
            case amount = "amount"
            
            case userId = "user_id"
            
            case customerMobileNumber = "customer_mobile_number"
            
            case totalCreditedBalance = "total_credited_balance"
            
            case isCnLocked = "is_cn_locked"
            
            case totalLockedAmount = "total_locked_amount"
            
            case allowedRedemptionAmount = "allowed_redemption_amount"
            
        }

        public init(allowedRedemptionAmount: Double? = nil, amount: Int? = nil, approved: Bool? = nil, buttonText: String? = nil, customerMobileNumber: String? = nil, firstTransaction: Bool? = nil, isCnLocked: Bool? = nil, message: String? = nil, totalCreditedBalance: Double? = nil, totalLockedAmount: Double? = nil, userId: String? = nil) {
            
            self.approved = approved
            
            self.buttonText = buttonText
            
            self.firstTransaction = firstTransaction
            
            self.message = message
            
            self.amount = amount
            
            self.userId = userId
            
            self.customerMobileNumber = customerMobileNumber
            
            self.totalCreditedBalance = totalCreditedBalance
            
            self.isCnLocked = isCnLocked
            
            self.totalLockedAmount = totalLockedAmount
            
            self.allowedRedemptionAmount = allowedRedemptionAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    approved = try container.decode(Bool.self, forKey: .approved)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    buttonText = try container.decode(String.self, forKey: .buttonText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    firstTransaction = try container.decode(Bool.self, forKey: .firstTransaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalCreditedBalance = try container.decode(Double.self, forKey: .totalCreditedBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCnLocked = try container.decode(Bool.self, forKey: .isCnLocked)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalLockedAmount = try container.decode(Double.self, forKey: .totalLockedAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowedRedemptionAmount = try container.decode(Double.self, forKey: .allowedRedemptionAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(approved, forKey: .approved)
            
            
            
            
            try? container.encodeIfPresent(buttonText, forKey: .buttonText)
            
            
            
            
            try? container.encodeIfPresent(firstTransaction, forKey: .firstTransaction)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(userId, forKey: .userId)
            
            
            
            
            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(totalCreditedBalance, forKey: .totalCreditedBalance)
            
            
            
            
            try? container.encodeIfPresent(isCnLocked, forKey: .isCnLocked)
            
            
            
            
            try? container.encodeIfPresent(totalLockedAmount, forKey: .totalLockedAmount)
            
            
            
            
            try? container.encodeIfPresent(allowedRedemptionAmount, forKey: .allowedRedemptionAmount)
            
            
        }
        
    }
}


