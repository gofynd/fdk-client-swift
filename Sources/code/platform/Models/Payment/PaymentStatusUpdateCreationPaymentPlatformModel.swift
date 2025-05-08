

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentStatusUpdateCreation
        Used By: Payment
    */

    class PaymentStatusUpdateCreation: Codable {
        
        
        public var deviceId: String?
        
        public var email: String
        
        public var customerId: String
        
        public var vpa: String?
        
        public var aggregator: String
        
        public var orderId: String
        
        public var currency: String
        
        public var amount: Int
        
        public var contact: String
        
        public var merchantOrderId: String
        
        public var status: String
        
        public var method: String
        
        public var merchantTransactionId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case deviceId = "device_id"
            
            case email = "email"
            
            case customerId = "customer_id"
            
            case vpa = "vpa"
            
            case aggregator = "aggregator"
            
            case orderId = "order_id"
            
            case currency = "currency"
            
            case amount = "amount"
            
            case contact = "contact"
            
            case merchantOrderId = "merchant_order_id"
            
            case status = "status"
            
            case method = "method"
            
            case merchantTransactionId = "merchant_transaction_id"
            
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            
            self.deviceId = deviceId
            
            self.email = email
            
            self.customerId = customerId
            
            self.vpa = vpa
            
            self.aggregator = aggregator
            
            self.orderId = orderId
            
            self.currency = currency
            
            self.amount = amount
            
            self.contact = contact
            
            self.merchantOrderId = merchantOrderId
            
            self.status = status
            
            self.method = method
            
            self.merchantTransactionId = merchantTransactionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deviceId = try container.decode(String.self, forKey: .deviceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                customerId = try container.decode(String.self, forKey: .customerId)
                
            
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                contact = try container.decode(String.self, forKey: .contact)
                
            
            
            
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                method = try container.decode(String.self, forKey: .method)
                
            
            
            
                merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deviceId, forKey: .deviceId)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentStatusUpdateCreation
        Used By: Payment
    */

    class PaymentStatusUpdateCreation: Codable {
        
        
        public var deviceId: String?
        
        public var email: String
        
        public var customerId: String
        
        public var vpa: String?
        
        public var aggregator: String
        
        public var orderId: String
        
        public var currency: String
        
        public var amount: Int
        
        public var contact: String
        
        public var merchantOrderId: String
        
        public var status: String
        
        public var method: String
        
        public var merchantTransactionId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case deviceId = "device_id"
            
            case email = "email"
            
            case customerId = "customer_id"
            
            case vpa = "vpa"
            
            case aggregator = "aggregator"
            
            case orderId = "order_id"
            
            case currency = "currency"
            
            case amount = "amount"
            
            case contact = "contact"
            
            case merchantOrderId = "merchant_order_id"
            
            case status = "status"
            
            case method = "method"
            
            case merchantTransactionId = "merchant_transaction_id"
            
        }

        public init(aggregator: String, amount: Int, contact: String, currency: String, customerId: String, deviceId: String? = nil, email: String, merchantOrderId: String, merchantTransactionId: String, method: String, orderId: String, status: String, vpa: String? = nil) {
            
            self.deviceId = deviceId
            
            self.email = email
            
            self.customerId = customerId
            
            self.vpa = vpa
            
            self.aggregator = aggregator
            
            self.orderId = orderId
            
            self.currency = currency
            
            self.amount = amount
            
            self.contact = contact
            
            self.merchantOrderId = merchantOrderId
            
            self.status = status
            
            self.method = method
            
            self.merchantTransactionId = merchantTransactionId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deviceId = try container.decode(String.self, forKey: .deviceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                email = try container.decode(String.self, forKey: .email)
                
            
            
            
                customerId = try container.decode(String.self, forKey: .customerId)
                
            
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                aggregator = try container.decode(String.self, forKey: .aggregator)
                
            
            
            
                orderId = try container.decode(String.self, forKey: .orderId)
                
            
            
            
                currency = try container.decode(String.self, forKey: .currency)
                
            
            
            
                amount = try container.decode(Int.self, forKey: .amount)
                
            
            
            
                contact = try container.decode(String.self, forKey: .contact)
                
            
            
            
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
                
            
            
            
                status = try container.decode(String.self, forKey: .status)
                
            
            
            
                method = try container.decode(String.self, forKey: .method)
                
            
            
            
                merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deviceId, forKey: .deviceId)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
        }
        
    }
}


