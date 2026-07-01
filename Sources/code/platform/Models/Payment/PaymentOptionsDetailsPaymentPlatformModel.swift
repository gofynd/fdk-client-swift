

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentOptionsDetails
        Used By: Payment
    */

    class PaymentOptionsDetails: Codable {
        
        
        public var paymentOptions: PaymentOptions
        
        public var success: Bool
        
        public var paymentBreakup: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOptions = "payment_options"
            
            case success = "success"
            
            case paymentBreakup = "payment_breakup"
            
        }

        public init(paymentBreakup: [String: Any]? = nil, paymentOptions: PaymentOptions, success: Bool) {
            
            self.paymentOptions = paymentOptions
            
            self.success = success
            
            self.paymentBreakup = paymentBreakup
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentOptions = try container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    paymentBreakup = try container.decode([String: Any].self, forKey: .paymentBreakup)
                
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
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentOptionsDetails
        Used By: Payment
    */

    class PaymentOptionsDetails: Codable {
        
        
        public var paymentOptions: PaymentOptions
        
        public var success: Bool
        
        public var paymentBreakup: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOptions = "payment_options"
            
            case success = "success"
            
            case paymentBreakup = "payment_breakup"
            
        }

        public init(paymentBreakup: [String: Any]? = nil, paymentOptions: PaymentOptions, success: Bool) {
            
            self.paymentOptions = paymentOptions
            
            self.success = success
            
            self.paymentBreakup = paymentBreakup
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentOptions = try container.decode(PaymentOptions.self, forKey: .paymentOptions)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                do {
                    paymentBreakup = try container.decode([String: Any].self, forKey: .paymentBreakup)
                
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
            
            
        }
        
    }
}


