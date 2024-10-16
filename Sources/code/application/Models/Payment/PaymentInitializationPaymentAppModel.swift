

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: PaymentInitialization
        Used By: Payment
    */
    class PaymentInitialization: Codable {
        
        public var razorpayPaymentId: String?
        
        public var method: String
        
        public var deviceId: String?
        
        public var aggregator: String
        
        public var customerId: String
        
        public var contact: String
        
        public var merchantOrderId: String
        
        public var vpa: String?
        
        public var orderId: String
        
        public var currency: String
        
        public var timeout: Int?
        
        public var amount: Int
        
        public var email: String
        

        public enum CodingKeys: String, CodingKey {
            
            case razorpayPaymentId = "razorpay_payment_id"
            
            case method = "method"
            
            case deviceId = "device_id"
            
            case aggregator = "aggregator"
            
            case customerId = "customer_id"
            
            case contact = "contact"
            
            case merchantOrderId = "merchant_order_id"
            
            case vpa = "vpa"
            
            case orderId = "order_id"
            
            case currency = "currency"
            
            case timeout = "timeout"
            
            case amount = "amount"
            
            case email = "email"
            
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, method: String, orderId: String, razorpayPaymentId: String? = nil, timeout: Int? = nil, vpa: String? = nil) {
            
            self.razorpayPaymentId = razorpayPaymentId
            
            self.method = method
            
            self.deviceId = deviceId
            
            self.aggregator = aggregator
            
            self.customerId = customerId
            
            self.contact = contact
            
            self.merchantOrderId = merchantOrderId
            
            self.vpa = vpa
            
            self.orderId = orderId
            
            self.currency = currency
            
            self.timeout = timeout
            
            self.amount = amount
            
            self.email = email
            
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
            
            
            
            method = try container.decode(String.self, forKey: .method)
            
            
            
            
            do {
                deviceId = try container.decode(String.self, forKey: .deviceId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            aggregator = try container.decode(String.self, forKey: .aggregator)
            
            
            
            
            customerId = try container.decode(String.self, forKey: .customerId)
            
            
            
            
            contact = try container.decode(String.self, forKey: .contact)
            
            
            
            
            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
            
            
            
            do {
                vpa = try container.decode(String.self, forKey: .vpa)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            orderId = try container.decode(String.self, forKey: .orderId)
            
            
            
            
            currency = try container.decode(String.self, forKey: .currency)
            
            
            
            
            do {
                timeout = try container.decode(Int.self, forKey: .timeout)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            amount = try container.decode(Int.self, forKey: .amount)
            
            
            
            
            email = try container.decode(String.self, forKey: .email)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(razorpayPaymentId, forKey: .razorpayPaymentId)
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
            
            try? container.encodeIfPresent(deviceId, forKey: .deviceId)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(timeout, forKey: .timeout)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
        }
        
    }
}
