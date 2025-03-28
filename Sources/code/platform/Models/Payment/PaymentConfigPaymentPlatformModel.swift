

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentConfig
        Used By: Payment
    */

    class PaymentConfig: Codable {
        
        
        public var redirect: Bool?
        
        public var finalPaymentActionUrl: String?
        
        public var callbackUrl: String?
        
        public var actionUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case redirect = "redirect"
            
            case finalPaymentActionUrl = "final_payment_action_url"
            
            case callbackUrl = "callback_url"
            
            case actionUrl = "action_url"
            
        }

        public init(actionUrl: String? = nil, callbackUrl: String? = nil, finalPaymentActionUrl: String? = nil, redirect: Bool? = nil) {
            
            self.redirect = redirect
            
            self.finalPaymentActionUrl = finalPaymentActionUrl
            
            self.callbackUrl = callbackUrl
            
            self.actionUrl = actionUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    redirect = try container.decode(Bool.self, forKey: .redirect)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    finalPaymentActionUrl = try container.decode(String.self, forKey: .finalPaymentActionUrl)
                
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
                    actionUrl = try container.decode(String.self, forKey: .actionUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(redirect, forKey: .redirect)
            
            
            
            
            try? container.encodeIfPresent(finalPaymentActionUrl, forKey: .finalPaymentActionUrl)
            
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(actionUrl, forKey: .actionUrl)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentConfig
        Used By: Payment
    */

    class PaymentConfig: Codable {
        
        
        public var redirect: Bool?
        
        public var finalPaymentActionUrl: String?
        
        public var callbackUrl: String?
        
        public var actionUrl: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case redirect = "redirect"
            
            case finalPaymentActionUrl = "final_payment_action_url"
            
            case callbackUrl = "callback_url"
            
            case actionUrl = "action_url"
            
        }

        public init(actionUrl: String? = nil, callbackUrl: String? = nil, finalPaymentActionUrl: String? = nil, redirect: Bool? = nil) {
            
            self.redirect = redirect
            
            self.finalPaymentActionUrl = finalPaymentActionUrl
            
            self.callbackUrl = callbackUrl
            
            self.actionUrl = actionUrl
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    redirect = try container.decode(Bool.self, forKey: .redirect)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    finalPaymentActionUrl = try container.decode(String.self, forKey: .finalPaymentActionUrl)
                
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
                    actionUrl = try container.decode(String.self, forKey: .actionUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(redirect, forKey: .redirect)
            
            
            
            
            try? container.encodeIfPresent(finalPaymentActionUrl, forKey: .finalPaymentActionUrl)
            
            
            
            
            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)
            
            
            
            
            try? container.encodeIfPresent(actionUrl, forKey: .actionUrl)
            
            
        }
        
    }
}


