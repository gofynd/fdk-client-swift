

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: VerifyPaymentData
        Used By: Billing
    */

    class VerifyPaymentData: Codable {
        
        
        public var success: Bool?
        
        public var subscriber: Subscriber?
        
        public var creditTransaction: CreditTransaction?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case subscriber = "subscriber"
            
            case creditTransaction = "credit_transaction"
            
        }

        public init(creditTransaction: CreditTransaction? = nil, subscriber: Subscriber? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.subscriber = subscriber
            
            self.creditTransaction = creditTransaction
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscriber = try container.decode(Subscriber.self, forKey: .subscriber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditTransaction = try container.decode(CreditTransaction.self, forKey: .creditTransaction)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(subscriber, forKey: .subscriber)
            
            
            
            
            try? container.encodeIfPresent(creditTransaction, forKey: .creditTransaction)
            
            
        }
        
    }
}




