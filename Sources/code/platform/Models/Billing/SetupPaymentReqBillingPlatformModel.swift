

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SetupPaymentReq
        Used By: Billing
    */

    class SetupPaymentReq: Codable {
        
        
        public var paymentMethod: String?
        
        public var paymentId: String?
        
        public var planId: String?
        
        public var invoiceId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentMethod = "payment_method"
            
            case paymentId = "payment_id"
            
            case planId = "plan_id"
            
            case invoiceId = "invoice_id"
            
        }

        public init(invoiceId: String? = nil, paymentId: String? = nil, paymentMethod: String? = nil, planId: String? = nil) {
            
            self.paymentMethod = paymentMethod
            
            self.paymentId = paymentId
            
            self.planId = planId
            
            self.invoiceId = invoiceId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentMethod = try container.decode(String.self, forKey: .paymentMethod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentId = try container.decode(String.self, forKey: .paymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    planId = try container.decode(String.self, forKey: .planId)
                
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
            
            
            
            try? container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
            
            
            
            
            try? container.encodeIfPresent(paymentId, forKey: .paymentId)
            
            
            
            
            try? container.encodeIfPresent(planId, forKey: .planId)
            
            
            
            
            try? container.encodeIfPresent(invoiceId, forKey: .invoiceId)
            
            
        }
        
    }
}




