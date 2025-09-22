

import Foundation




public extension PlatformClient.ApplicationClient.Cart {
    /*
        Model: OverrideCheckoutData
        Used By: Cart
    */

    class OverrideCheckoutData: Codable {
        
        
        public var amount: Int?
        
        public var orderId: String?
        
        public var email: String?
        
        public var contact: String?
        
        public var currency: String?
        
        public var customerId: String?
        
        public var callbackUrl: String?
        
        public var bank: String?
        
        public var method: String?
        
        public var vpa: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case amount = "amount"
            
            case orderId = "order_id"
            
            case email = "email"
            
            case contact = "contact"
            
            case currency = "currency"
            
            case customerId = "customer_id"
            
            case callbackUrl = "callback_url"
            
            case bank = "bank"
            
            case method = "method"
            
            case vpa = "vpa"
            
        }

        public init(amount: Int? = nil, bank: String? = nil, callbackUrl: String? = nil, contact: String? = nil, currency: String? = nil, customerId: String? = nil, email: String? = nil, method: String? = nil, orderId: String? = nil, vpa: String? = nil) {
            
            self.amount = amount
            
            self.orderId = orderId
            
            self.email = email
            
            self.contact = contact
            
            self.currency = currency
            
            self.customerId = customerId
            
            self.callbackUrl = callbackUrl
            
            self.bank = bank
            
            self.method = method
            
            self.vpa = vpa
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    amount = try container.decode(Int.self, forKey: .amount)
                
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
                    email = try container.decode(String.self, forKey: .email)
                
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
                    currency = try container.decode(String.self, forKey: .currency)
                
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
                    callbackUrl = try container.decode(String.self, forKey: .callbackUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bank = try container.decode(String.self, forKey: .bank)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    method = try container.decode(String.self, forKey: .method)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    vpa = try container.decode(String.self, forKey: .vpa)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(amount, forKey: .amount)
            
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(contact, forKey: .contact)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            
            try? container.encodeIfPresent(customerId, forKey: .customerId)
            
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(bank, forKey: .bank)
            
            
            
            
            try? container.encodeIfPresent(method, forKey: .method)
            
            
            
            
            try? container.encodeIfPresent(vpa, forKey: .vpa)
            
            
        }
        
    }
}


