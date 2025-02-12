

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SubscriptionActivateReq
        Used By: Billing
    */

    class SubscriptionActivateReq: Codable {
        
        
        public var uniqueId: String?
        
        public var type: String?
        
        public var productSuite: String?
        
        public var planId: String?
        
        public var paymentMethod: String?
        
        public var subscriptionId: String?
        
        public var coupon: String?
        
        public var meta: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueId = "unique_id"
            
            case type = "type"
            
            case productSuite = "product_suite"
            
            case planId = "plan_id"
            
            case paymentMethod = "payment_method"
            
            case subscriptionId = "subscription_id"
            
            case coupon = "coupon"
            
            case meta = "meta"
            
        }

        public init(coupon: String? = nil, meta: [String: Any]? = nil, paymentMethod: String? = nil, planId: String? = nil, productSuite: String? = nil, subscriptionId: String? = nil, type: String? = nil, uniqueId: String? = nil) {
            
            self.uniqueId = uniqueId
            
            self.type = type
            
            self.productSuite = productSuite
            
            self.planId = planId
            
            self.paymentMethod = paymentMethod
            
            self.subscriptionId = subscriptionId
            
            self.coupon = coupon
            
            self.meta = meta
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uniqueId = try container.decode(String.self, forKey: .uniqueId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    productSuite = try container.decode(String.self, forKey: .productSuite)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    planId = try container.decode(String.self, forKey: .planId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethod = try container.decode(String.self, forKey: .paymentMethod)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscriptionId = try container.decode(String.self, forKey: .subscriptionId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    coupon = try container.decode(String.self, forKey: .coupon)
                
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
            
            
            
            try? container.encodeIfPresent(uniqueId, forKey: .uniqueId)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(productSuite, forKey: .productSuite)
            
            
            
            
            try? container.encodeIfPresent(planId, forKey: .planId)
            
            
            
            
            try? container.encodeIfPresent(paymentMethod, forKey: .paymentMethod)
            
            
            
            
            try? container.encodeIfPresent(subscriptionId, forKey: .subscriptionId)
            
            
            
            
            try? container.encodeIfPresent(coupon, forKey: .coupon)
            
            
            
            
            try? container.encodeIfPresent(meta, forKey: .meta)
            
            
        }
        
    }
}




