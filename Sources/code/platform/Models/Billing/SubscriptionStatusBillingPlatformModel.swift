

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SubscriptionStatus
        Used By: Billing
    */

    class SubscriptionStatus: Codable {
        
        
        public var isEnabled: Bool?
        
        public var subscription: Subscription?
        
        public var latestInvoice: InvoicesData?
        
        public var nextPlan: Plan?
        
        public var currentSubscriptions: [Subscription]?
        
        public var mandateAmount: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case isEnabled = "is_enabled"
            
            case subscription = "subscription"
            
            case latestInvoice = "latest_invoice"
            
            case nextPlan = "next_plan"
            
            case currentSubscriptions = "current_subscriptions"
            
            case mandateAmount = "mandate_amount"
            
        }

        public init(currentSubscriptions: [Subscription]? = nil, isEnabled: Bool? = nil, latestInvoice: InvoicesData? = nil, mandateAmount: String? = nil, nextPlan: Plan? = nil, subscription: Subscription? = nil) {
            
            self.isEnabled = isEnabled
            
            self.subscription = subscription
            
            self.latestInvoice = latestInvoice
            
            self.nextPlan = nextPlan
            
            self.currentSubscriptions = currentSubscriptions
            
            self.mandateAmount = mandateAmount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    isEnabled = try container.decode(Bool.self, forKey: .isEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subscription = try container.decode(Subscription.self, forKey: .subscription)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    latestInvoice = try container.decode(InvoicesData.self, forKey: .latestInvoice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    nextPlan = try container.decode(Plan.self, forKey: .nextPlan)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentSubscriptions = try container.decode([Subscription].self, forKey: .currentSubscriptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    mandateAmount = try container.decode(String.self, forKey: .mandateAmount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(isEnabled, forKey: .isEnabled)
            
            
            
            
            try? container.encodeIfPresent(subscription, forKey: .subscription)
            
            
            
            
            try? container.encodeIfPresent(latestInvoice, forKey: .latestInvoice)
            
            
            
            
            try? container.encodeIfPresent(nextPlan, forKey: .nextPlan)
            
            
            
            
            try? container.encodeIfPresent(currentSubscriptions, forKey: .currentSubscriptions)
            
            
            
            
            try? container.encodeIfPresent(mandateAmount, forKey: .mandateAmount)
            
            
        }
        
    }
}




