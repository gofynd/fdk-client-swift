

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: CreateOrderUser
        Used By: Payment
    */
    class CreateOrderUser: Codable {
        
        public var currency: String
        
        public var paymentLinkId: String
        
        public var paymentMethods: CreateOrderUserPaymentMethods
        
        public var failureCallbackUrl: String?
        
        public var successCallbackUrl: String?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case currency = "currency"
            
            case paymentLinkId = "payment_link_id"
            
            case paymentMethods = "payment_methods"
            
            case failureCallbackUrl = "failure_callback_url"
            
            case successCallbackUrl = "success_callback_url"
            
            case meta = "meta"
            
        }

        public init(currency: String, failureCallbackUrl: String? = nil, meta: [String: Any]? = nil, paymentLinkId: String, paymentMethods: CreateOrderUserPaymentMethods, successCallbackUrl: String? = nil) {
            
            self.currency = currency
            
            self.paymentLinkId = paymentLinkId
            
            self.paymentMethods = paymentMethods
            
            self.failureCallbackUrl = failureCallbackUrl
            
            self.successCallbackUrl = successCallbackUrl
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            currency = try container.decode(String.self, forKey: .currency)
            
            
            
            
            paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)
            
            
            
            
            paymentMethods = try container.decode(CreateOrderUserPaymentMethods.self, forKey: .paymentMethods)
            
            
            
            
            do {
                failureCallbackUrl = try container.decode(String.self, forKey: .failureCallbackUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                successCallbackUrl = try container.decode(String.self, forKey: .successCallbackUrl)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                meta = try container.decode([String: Any].self, forKey: .meta)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
            
            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)
            
            
            
            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
            
            
            
            try? container.encodeIfPresent(failureCallbackUrl, forKey: .failureCallbackUrl)
            
            
            
            try? container.encodeIfPresent(successCallbackUrl, forKey: .successCallbackUrl)
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}
