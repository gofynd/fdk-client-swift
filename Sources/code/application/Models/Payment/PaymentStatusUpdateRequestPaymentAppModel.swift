

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: PaymentStatusUpdateRequest
        Used By: Payment
    */
    class PaymentStatusUpdateRequest: Codable {
        
        public var status: String?
        
        public var merchantTransactionId: String?
        
        public var method: String
        
        public var deviceId: String?
        
        public var aggregator: String
        
        public var customerId: String?
        
        public var contact: String?
        
        public var merchantOrderId: String
        
        public var vpa: String?
        
        public var orderId: String?
        
        public var currency: String?
        
        public var amount: Int?
        
        public var email: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case merchantTransactionId = "merchant_transaction_id"
            
            case method = "method"
            
            case deviceId = "device_id"
            
            case aggregator = "aggregator"
            
            case customerId = "customer_id"
            
            case contact = "contact"
            
            case merchantOrderId = "merchant_order_id"
            
            case vpa = "vpa"
            
            case orderId = "order_id"
            
            case currency = "currency"
            
            case amount = "amount"
            
            case email = "email"
            
        }

        public init(aggregator: String, amount: Int? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, deviceId: String? = nil, email: String? = nil, merchantOrderId: String, merchantTransactionId: String? = nil, method: String, orderId: String? = nil, status: String? = nil, vpa: String? = nil) {
            
            self.status = status
            
            self.merchantTransactionId = merchantTransactionId
            
            self.method = method
            
            self.deviceId = deviceId
            
            self.aggregator = aggregator
            
            self.customerId = customerId
            
            self.contact = contact
            
            self.merchantOrderId = merchantOrderId
            
            self.vpa = vpa
            
            self.orderId = orderId
            
            self.currency = currency
            
            self.amount = amount
            
            self.email = email
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                status = try container.decode(String.self, forKey: .status)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                merchantTransactionId = try container.decode(String.self, forKey: .merchantTransactionId)
            
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
            
            
            
            
            do {
                customerId = try container.decode(String.self, forKey: .customerId)
            
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
            
            
            
            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
            
            
            
            do {
                vpa = try container.decode(String.self, forKey: .vpa)
            
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
                email = try container.decode(String.self, forKey: .email)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            try? container.encodeIfPresent(merchantTransactionId, forKey: .merchantTransactionId)
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
            
            try? container.encodeIfPresent(deviceId, forKey: .deviceId)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
        }
        
    }
}
