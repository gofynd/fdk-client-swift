

import Foundation
public extension ApplicationClient.Finance {
    /*
        Model: CustomerCreditBalanceResData
        Used By: Finance
    */
    class CustomerCreditBalanceResData: Codable {
        
        public var customerMobileNumber: String?
        
        public var customerEmail: String?
        
        public var totalCreditedBalance: Double?
        
        public var totalLockedAmount: Double?
        
        public var allowedRedemptionAmount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case customerMobileNumber = "customer_mobile_number"
            
            case customerEmail = "customer_email"
            
            case totalCreditedBalance = "total_credited_balance"
            
            case totalLockedAmount = "total_locked_amount"
            
            case allowedRedemptionAmount = "allowed_redemption_amount"
            
        }

        public init(allowedRedemptionAmount: Double? = nil, customerEmail: String? = nil, customerMobileNumber: String? = nil, totalCreditedBalance: Double? = nil, totalLockedAmount: Double? = nil) {
            
            self.customerMobileNumber = customerMobileNumber
            
            self.customerEmail = customerEmail
            
            self.totalCreditedBalance = totalCreditedBalance
            
            self.totalLockedAmount = totalLockedAmount
            
            self.allowedRedemptionAmount = allowedRedemptionAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                customerMobileNumber = try container.decode(String.self, forKey: .customerMobileNumber)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customerEmail = try container.decode(String.self, forKey: .customerEmail)
            
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
            
            
            try? container.encodeIfPresent(customerMobileNumber, forKey: .customerMobileNumber)
            
            
            
            try? container.encodeIfPresent(customerEmail, forKey: .customerEmail)
            
            
            
            try? container.encodeIfPresent(totalCreditedBalance, forKey: .totalCreditedBalance)
            
            
            
            try? container.encodeIfPresent(totalLockedAmount, forKey: .totalLockedAmount)
            
            
            
            try? container.encodeIfPresent(allowedRedemptionAmount, forKey: .allowedRedemptionAmount)
            
            
        }
        
    }
}
