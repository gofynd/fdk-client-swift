

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CreateOrderUserData
        Used By: Payment
    */
    class CreateOrderUserData: Codable {
        
        public var method: String?
        
        public var aggregator: String?
        
        public var customerId: String?
        
        public var contact: String?
        
        public var merchantOrderId: String?
        
        public var orderId: String?
        
        public var currency: String?
        
        public var callbackUrl: String?
        
        public var amount: Double?
        
        public var email: String?
        
        public var base64Html: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case method = "method"
            
            case aggregator = "aggregator"
            
            case customerId = "customer_id"
            
            case contact = "contact"
            
            case merchantOrderId = "merchant_order_id"
            
            case orderId = "order_id"
            
            case currency = "currency"
            
            case callbackUrl = "callback_url"
            
            case amount = "amount"
            
            case email = "email"
            
            case base64Html = "base64_html"
            
        }

        public init(aggregator: String? = nil, amount: Double? = nil, base64Html: String? = nil, callbackUrl: String? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, email: String? = nil, merchantOrderId: String? = nil, method: String? = nil, orderId: String? = nil) {
            
            self.method = method
            
            self.aggregator = aggregator
            
            self.customerId = customerId
            
            self.contact = contact
            
            self.merchantOrderId = merchantOrderId
            
            self.orderId = orderId
            
            self.currency = currency
            
            self.callbackUrl = callbackUrl
            
            self.amount = amount
            
            self.email = email
            
            self.base64Html = base64Html
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                method = try container.decode(String.self, forKey: .method)
            
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
            
            
            
            do {
                merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)
            
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
                callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                amount = try container.decode(Double.self, forKey: .amount)
            
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
            
            
            
            do {
                base64Html = try container.decode(String.self, forKey: .base64Html)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
            
            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            try? container.encodeIfPresent(base64Html, forKey: .base64Html)
            
            
        }
        
    }
}
