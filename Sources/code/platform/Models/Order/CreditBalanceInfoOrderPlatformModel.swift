

import Foundation


public extension PlatformClient.Order {
    /*
        Model: CreditBalanceInfo
        Used By: Order
    */

    class CreditBalanceInfo: Codable {
        
        
        public var totalCreditedBalance: Double?
        
        public var reason: String?
        
        public var customerMobileNumber: String?
        
        public var isCnLocked: Bool?
        
        public var totalLockedAmount: Double?
        
        public var allowedRedemptionAmount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalCreditedBalance = "total_credited_balance"
            
            case reason = "reason"
            
            case customerMobileNumber = "customer_mobile_number"
            
            case isCnLocked = "is_cn_locked"
            
            case totalLockedAmount = "total_locked_amount"
            
            case allowedRedemptionAmount = "allowed_redemption_amount"
            
        }

        public init(allowedRedemptionAmount: Double? = nil, customerMobileNumber: String? = nil, isCnLocked: Bool? = nil, reason: String? = nil, totalCreditedBalance: Double? = nil, totalLockedAmount: Double? = nil) {
            
            self.totalCreditedBalance = totalCreditedBalance
            
            self.reason = reason
            
            self.customerMobileNumber = customerMobileNumber
            
            self.isCnLocked = isCnLocked
            
            self.totalLockedAmount = totalLockedAmount
            
            self.allowedRedemptionAmount = allowedRedemptionAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalCreditedBalance = try container.decode(Double.self, forKey: .totalCreditedBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
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
            
            
            
            try? container.encodeIfPresent(totalCreditedBalance, forKey: .totalCreditedBalance)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(isCnLocked, forKey: .isCnLocked)
            
            
            
            
            try? container.encodeIfPresent(totalLockedAmount, forKey: .totalLockedAmount)
            
            
            
            
            try? container.encodeIfPresent(allowedRedemptionAmount, forKey: .allowedRedemptionAmount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: CreditBalanceInfo
        Used By: Order
    */

    class CreditBalanceInfo: Codable {
        
        
        public var totalCreditedBalance: Double?
        
        public var reason: String?
        
        public var customerMobileNumber: String?
        
        public var isCnLocked: Bool?
        
        public var totalLockedAmount: Double?
        
        public var allowedRedemptionAmount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case totalCreditedBalance = "total_credited_balance"
            
            case reason = "reason"
            
            case customerMobileNumber = "customer_mobile_number"
            
            case isCnLocked = "is_cn_locked"
            
            case totalLockedAmount = "total_locked_amount"
            
            case allowedRedemptionAmount = "allowed_redemption_amount"
            
        }

        public init(allowedRedemptionAmount: Double? = nil, customerMobileNumber: String? = nil, isCnLocked: Bool? = nil, reason: String? = nil, totalCreditedBalance: Double? = nil, totalLockedAmount: Double? = nil) {
            
            self.totalCreditedBalance = totalCreditedBalance
            
            self.reason = reason
            
            self.customerMobileNumber = customerMobileNumber
            
            self.isCnLocked = isCnLocked
            
            self.totalLockedAmount = totalLockedAmount
            
            self.allowedRedemptionAmount = allowedRedemptionAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    totalCreditedBalance = try container.decode(Double.self, forKey: .totalCreditedBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
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
            
            
            
            try? container.encodeIfPresent(totalCreditedBalance, forKey: .totalCreditedBalance)
            
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
            
            
            
            
            try? container.encodeIfPresent(isCnLocked, forKey: .isCnLocked)
            
            
            
            
            try? container.encodeIfPresent(totalLockedAmount, forKey: .totalLockedAmount)
            
            
            
            
            try? container.encodeIfPresent(allowedRedemptionAmount, forKey: .allowedRedemptionAmount)
            
            
        }
        
    }
}


