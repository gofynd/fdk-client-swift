

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentInitializationCreation
        Used By: Payment
    */

    class PaymentInitializationCreation: Codable {
        
        
        public var razorpayPaymentId: String?
        
        public var deviceId: String?
        
        public var email: String?
        
        public var customerId: String
        
        public var vpa: String?
        
        public var aggregator: String?
        
        public var orderId: String?
        
        public var currency: String?
        
        public var amount: Int?
        
        public var contact: String?
        
        public var timeout: Int?
        
        public var merchantOrderId: String
        
        public var merchantTransactionId: String?
        
        public var method: String
        

        public enum CodingKeys: String, CodingKey {
            
            case razorpayPaymentId = "razorpay_payment_id"
            
            case deviceId = "device_id"
            
            case email = "email"
            
            case customerId = "customer_id"
            
            case vpa = "vpa"
            
            case aggregator = "aggregator"
            
            case orderId = "order_id"
            
            case currency = "currency"
            
            case amount = "amount"
            
            case contact = "contact"
            
            case timeout = "timeout"
            
            case merchantOrderId = "merchant_order_id"
            
            case merchantTransactionId = "merchant_transaction_id"
            
            case method = "method"
            
        }

        public init(aggregator: String? = nil, amount: Int? = nil, contact: String? = nil, currency: String? = nil, customerId: String, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, merchantTransactionId: String? = nil, method: String, orderId: String? = nil, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            
            self.razorpayPaymentId = razorpayPaymentId
            
            self.deviceId = deviceId
            
            self.email = email
            
            self.customerId = customerId
            
            self.vpa = vpa
            
            self.aggregator = aggregator
            
            self.orderId = orderId
            
            self.currency = currency
            
            self.amount = amount
            
            self.contact = contact
            
            self.timeout = timeout
            
            self.merchantOrderId = merchantOrderId
            
            self.merchantTransactionId = merchantTransactionId
            
            self.method = method
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deviceId = try container.decode(String.self, forKey: .deviceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                customerId = try container.decode(String.self, forKey: .customerId)
                
            
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contact = try container.decode(String.self, forKey: .contact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
            
            
            
                do {
                    merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                method = try container.decode(String.self, forKey: .method)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
            
            
            
            
            try? container.encodeIfPresent(deviceId, forKey: .deviceId)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(timeout, forKey: .timeout)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentInitializationCreation
        Used By: Payment
    */

    class PaymentInitializationCreation: Codable {
        
        
        public var razorpayPaymentId: String?
        
        public var deviceId: String?
        
        public var email: String?
        
        public var customerId: String
        
        public var vpa: String?
        
        public var aggregator: String?
        
        public var orderId: String?
        
        public var currency: String?
        
        public var amount: Int?
        
        public var contact: String?
        
        public var timeout: Int?
        
        public var merchantOrderId: String
        
        public var merchantTransactionId: String?
        
        public var method: String
        

        public enum CodingKeys: String, CodingKey {
            
            case razorpayPaymentId = "razorpay_payment_id"
            
            case deviceId = "device_id"
            
            case email = "email"
            
            case customerId = "customer_id"
            
            case vpa = "vpa"
            
            case aggregator = "aggregator"
            
            case orderId = "order_id"
            
            case currency = "currency"
            
            case amount = "amount"
            
            case contact = "contact"
            
            case timeout = "timeout"
            
            case merchantOrderId = "merchant_order_id"
            
            case merchantTransactionId = "merchant_transaction_id"
            
            case method = "method"
            
        }

        public init(aggregator: String? = nil, amount: Int? = nil, contact: String? = nil, currency: String? = nil, customerId: String, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, merchantTransactionId: String? = nil, method: String, orderId: String? = nil, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            
            self.razorpayPaymentId = razorpayPaymentId
            
            self.deviceId = deviceId
            
            self.email = email
            
            self.customerId = customerId
            
            self.vpa = vpa
            
            self.aggregator = aggregator
            
            self.orderId = orderId
            
            self.currency = currency
            
            self.amount = amount
            
            self.contact = contact
            
            self.timeout = timeout
            
            self.merchantOrderId = merchantOrderId
            
            self.merchantTransactionId = merchantTransactionId
            
            self.method = method
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    razorpayPaymentId = try container.decode(String.self, forKey: .razorpayPaymentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deviceId = try container.decode(String.self, forKey: .deviceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                customerId = try container.decode(String.self, forKey: .customerId)
                
            
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    aggregator = try container.decode(String.self, forKey: .aggregator)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currency = try container.decode(String.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    contact = try container.decode(String.self, forKey: .contact)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeout = try container.decode(Int.self, forKey: .timeout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
            
            
            
                do {
                    merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                method = try container.decode(String.self, forKey: .method)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
            
            
            
            
            try? container.encodeIfPresent(deviceId, forKey: .deviceId)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(timeout, forKey: .timeout)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
        }
        
    }
}


