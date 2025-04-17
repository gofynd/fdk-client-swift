

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: ValidateCustomerCreditSchema
        Used By: Payment
    */
    class ValidateCustomerCreditSchema: Codable {
        
        public var success: Bool
        
        public var isEligible: Bool
        
        public var isApplied: Bool?
        
        public var message: String
        
        public var cartId: String?
        
        public var account: CreditAccountSummary?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case isEligible = "is_eligible"
            
            case isApplied = "is_applied"
            
            case message = "message"
            
            case cartId = "cart_id"
            
            case account = "account"
            
        }

        public init(account: CreditAccountSummary? = nil, cartId: String? = nil, isApplied: Bool? = nil, isEligible: Bool, message: String, success: Bool) {
            
            self.success = success
            
            self.isEligible = isEligible
            
            self.isApplied = isApplied
            
            self.message = message
            
            self.cartId = cartId
            
            self.account = account
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            success = try container.decode(Bool.self, forKey: .success)
            
            
            
            
            isEligible = try container.decode(Bool.self, forKey: .isEligible)
            
            
            
            
            do {
                isApplied = try container.decode(Bool.self, forKey: .isApplied)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            message = try container.decode(String.self, forKey: .message)
            
            
            
            
            do {
                cartId = try container.decode(String.self, forKey: .cartId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                account = try container.decode(CreditAccountSummary.self, forKey: .account)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            try? container.encodeIfPresent(isEligible, forKey: .isEligible)
            
            
            
            try? container.encodeIfPresent(isApplied, forKey: .isApplied)
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            try? container.encodeIfPresent(cartId, forKey: .cartId)
            
            
            
            try? container.encodeIfPresent(account, forKey: .account)
            
            
        }
        
    }
}
