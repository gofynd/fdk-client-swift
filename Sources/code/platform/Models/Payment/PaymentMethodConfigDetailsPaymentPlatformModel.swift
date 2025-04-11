

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentMethodConfigDetails
        Used By: Payment
    */

    class PaymentMethodConfigDetails: Codable {
        
        
        public var success: Bool?
        
        public var refundTo: RefundTo?
        
        public var requiredSessionPaths: [RequiredSessionPath]?
        
        public var paymentMethods: [PaymentMode]?
        
        public var checkoutType: [CheckoutType]?
        
        public var autoCapture: [Bool]?
        
        public var mode: [Mode]?
        
        public var country: [Country]?
        
        public var currency: [Currency]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case refundTo = "refund_to"
            
            case requiredSessionPaths = "required_session_paths"
            
            case paymentMethods = "payment_methods"
            
            case checkoutType = "checkout_type"
            
            case autoCapture = "auto_capture"
            
            case mode = "mode"
            
            case country = "country"
            
            case currency = "currency"
            
        }

        public init(autoCapture: [Bool]? = nil, checkoutType: [CheckoutType]? = nil, country: [Country]? = nil, currency: [Currency]? = nil, mode: [Mode]? = nil, paymentMethods: [PaymentMode]? = nil, refundTo: RefundTo? = nil, requiredSessionPaths: [RequiredSessionPath]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.refundTo = refundTo
            
            self.requiredSessionPaths = requiredSessionPaths
            
            self.paymentMethods = paymentMethods
            
            self.checkoutType = checkoutType
            
            self.autoCapture = autoCapture
            
            self.mode = mode
            
            self.country = country
            
            self.currency = currency
            
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
                    refundTo = try container.decode(RefundTo.self, forKey: .refundTo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requiredSessionPaths = try container.decode([RequiredSessionPath].self, forKey: .requiredSessionPaths)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([PaymentMode].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checkoutType = try container.decode([CheckoutType].self, forKey: .checkoutType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoCapture = try container.decode([Bool].self, forKey: .autoCapture)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mode = try container.decode([Mode].self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode([Country].self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode([Currency].self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(refundTo, forKey: .refundTo)
            
            
            
            
            try? container.encodeIfPresent(requiredSessionPaths, forKey: .requiredSessionPaths)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(checkoutType, forKey: .checkoutType)
            
            
            
            
            try? container.encodeIfPresent(autoCapture, forKey: .autoCapture)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentMethodConfigDetails
        Used By: Payment
    */

    class PaymentMethodConfigDetails: Codable {
        
        
        public var success: Bool?
        
        public var refundTo: RefundTo?
        
        public var requiredSessionPaths: [RequiredSessionPath]?
        
        public var paymentMethods: [PaymentMode]?
        
        public var checkoutType: [CheckoutType]?
        
        public var autoCapture: [Bool]?
        
        public var mode: [Mode]?
        
        public var country: [Country]?
        
        public var currency: [Currency]?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case refundTo = "refund_to"
            
            case requiredSessionPaths = "required_session_paths"
            
            case paymentMethods = "payment_methods"
            
            case checkoutType = "checkout_type"
            
            case autoCapture = "auto_capture"
            
            case mode = "mode"
            
            case country = "country"
            
            case currency = "currency"
            
        }

        public init(autoCapture: [Bool]? = nil, checkoutType: [CheckoutType]? = nil, country: [Country]? = nil, currency: [Currency]? = nil, mode: [Mode]? = nil, paymentMethods: [PaymentMode]? = nil, refundTo: RefundTo? = nil, requiredSessionPaths: [RequiredSessionPath]? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.refundTo = refundTo
            
            self.requiredSessionPaths = requiredSessionPaths
            
            self.paymentMethods = paymentMethods
            
            self.checkoutType = checkoutType
            
            self.autoCapture = autoCapture
            
            self.mode = mode
            
            self.country = country
            
            self.currency = currency
            
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
                    refundTo = try container.decode(RefundTo.self, forKey: .refundTo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    requiredSessionPaths = try container.decode([RequiredSessionPath].self, forKey: .requiredSessionPaths)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethods = try container.decode([PaymentMode].self, forKey: .paymentMethods)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    checkoutType = try container.decode([CheckoutType].self, forKey: .checkoutType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    autoCapture = try container.decode([Bool].self, forKey: .autoCapture)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mode = try container.decode([Mode].self, forKey: .mode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    country = try container.decode([Country].self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode([Currency].self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(refundTo, forKey: .refundTo)
            
            
            
            
            try? container.encodeIfPresent(requiredSessionPaths, forKey: .requiredSessionPaths)
            
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            
            try? container.encodeIfPresent(checkoutType, forKey: .checkoutType)
            
            
            
            
            try? container.encodeIfPresent(autoCapture, forKey: .autoCapture)
            
            
            
            
            try? container.encodeIfPresent(mode, forKey: .mode)
            
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}


