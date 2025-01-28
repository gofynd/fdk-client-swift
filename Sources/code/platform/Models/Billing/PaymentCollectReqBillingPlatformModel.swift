

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: PaymentCollectReq
        Used By: Billing
    */

    class PaymentCollectReq: Codable {
        
        
        public var transactionId: String?
        
        public var creditBalance: Bool?
        
        public var paymentMode: String?
        
        public var paymentMethod: String?
        
        public var invoiceId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case transactionId = "transaction_id"
            
            case creditBalance = "credit_balance"
            
            case paymentMode = "payment_mode"
            
            case paymentMethod = "payment_method"
            
            case invoiceId = "invoice_id"
            
        }

        public init(creditBalance: Bool? = nil, invoiceId: String? = nil, paymentMethod: String? = nil, paymentMode: String? = nil, transactionId: String? = nil) {
            
            self.transactionId = transactionId
            
            self.creditBalance = creditBalance
            
            self.paymentMode = paymentMode
            
            self.paymentMethod = paymentMethod
            
            self.invoiceId = invoiceId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    transactionId = try container.decode(String.self, forKey: .transactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    creditBalance = try container.decode(Bool.self, forKey: .creditBalance)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMode = try container.decode(String.self, forKey: .paymentMode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethod = try container.decode(String.self, forKey: .paymentMethod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    invoiceId = try container.decode(String.self, forKey: .invoiceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
            
            
            
            
            try? container.encodeIfPresent(creditBalance, forKey: .creditBalance)
            
            
            
            
            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
            
            
            
            
            try? container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
            
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
        }
        
    }
}




