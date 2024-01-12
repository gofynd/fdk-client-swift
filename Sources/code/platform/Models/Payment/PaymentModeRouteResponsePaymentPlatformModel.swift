

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentModeRouteResponse
        Used By: Payment
    */

    class PaymentModeRouteResponse: Codable {
        
        
        public var paymentOptions: PaymentOptionAndFlow
        
        public var success: Bool
        
        public var paymentBreakup: [String: Any]?
        
        public var advancePayment: [AdvancePaymentObject]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOptions = "payment_options"
            
            case success = "success"
            
            case paymentBreakup = "payment_breakup"
            
            case advancePayment = "advance_payment"
            
        }

        public init(advancePayment: [AdvancePaymentObject]? = nil, paymentBreakup: [String: Any]? = nil, paymentOptions: PaymentOptionAndFlow, success: Bool) {
            
            self.paymentOptions = paymentOptions
            
            self.success = success
            
            self.paymentBreakup = paymentBreakup
            
            self.advancePayment = advancePayment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentOptions = try container.decode(PaymentOptionAndFlow.self, forKey: .paymentOptions)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    paymentBreakup = try container.decode([String: Any].self, forKey: .paymentBreakup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    advancePayment = try container.decode([AdvancePaymentObject].self, forKey: .advancePayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(paymentBreakup, forKey: .paymentBreakup)
            
            
            
            
            try? container.encodeIfPresent(advancePayment, forKey: .advancePayment)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentModeRouteResponse
        Used By: Payment
    */

    class PaymentModeRouteResponse: Codable {
        
        
        public var paymentOptions: PaymentOptionAndFlow
        
        public var success: Bool
        
        public var paymentBreakup: [String: Any]?
        
        public var advancePayment: [AdvancePaymentObject]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOptions = "payment_options"
            
            case success = "success"
            
            case paymentBreakup = "payment_breakup"
            
            case advancePayment = "advance_payment"
            
        }

        public init(advancePayment: [AdvancePaymentObject]? = nil, paymentBreakup: [String: Any]? = nil, paymentOptions: PaymentOptionAndFlow, success: Bool) {
            
            self.paymentOptions = paymentOptions
            
            self.success = success
            
            self.paymentBreakup = paymentBreakup
            
            self.advancePayment = advancePayment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentOptions = try container.decode(PaymentOptionAndFlow.self, forKey: .paymentOptions)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    paymentBreakup = try container.decode([String: Any].self, forKey: .paymentBreakup)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    advancePayment = try container.decode([AdvancePaymentObject].self, forKey: .advancePayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(paymentBreakup, forKey: .paymentBreakup)
            
            
            
            
            try? container.encodeIfPresent(advancePayment, forKey: .advancePayment)
            
            
        }
        
    }
}


