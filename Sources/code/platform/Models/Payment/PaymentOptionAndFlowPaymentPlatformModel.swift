

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentOptionAndFlow
        Used By: Payment
    */

    class PaymentOptionAndFlow: Codable {
        
        
        public var paymentOption: [RootPaymentMode]
        
        public var paymentFlows: PaymentFlow?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOption = "payment_option"
            
            case paymentFlows = "payment_flows"
            
        }

        public init(paymentFlows: PaymentFlow? = nil, paymentOption: [RootPaymentMode]) {
            
            self.paymentOption = paymentOption
            
            self.paymentFlows = paymentFlows
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)
                
            
            
            
                do {
                    paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
            
            
            
            
            try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentOptionAndFlow
        Used By: Payment
    */

    class PaymentOptionAndFlow: Codable {
        
        
        public var paymentOption: [RootPaymentMode]
        
        public var paymentFlows: PaymentFlow?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOption = "payment_option"
            
            case paymentFlows = "payment_flows"
            
        }

        public init(paymentFlows: PaymentFlow? = nil, paymentOption: [RootPaymentMode]) {
            
            self.paymentOption = paymentOption
            
            self.paymentFlows = paymentFlows
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentOption = try container.decode([RootPaymentMode].self, forKey: .paymentOption)
                
            
            
            
                do {
                    paymentFlows = try container.decode(PaymentFlow.self, forKey: .paymentFlows)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentOption, forKey: .paymentOption)
            
            
            
            
            try? container.encodeIfPresent(paymentFlows, forKey: .paymentFlows)
            
            
        }
        
    }
}


