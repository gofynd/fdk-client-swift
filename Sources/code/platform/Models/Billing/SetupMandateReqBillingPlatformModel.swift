

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: SetupMandateReq
        Used By: Billing
    */

    class SetupMandateReq: Codable {
        
        
        public var intentId: String?
        
        public var paymentMethodId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case intentId = "intent_id"
            
            case paymentMethodId = "payment_method_id"
            
        }

        public init(intentId: String? = nil, paymentMethodId: String? = nil) {
            
            self.intentId = intentId
            
            self.paymentMethodId = paymentMethodId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    intentId = try container.decode(String.self, forKey: .intentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    paymentMethodId = try container.decode(String.self, forKey: .paymentMethodId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(intentId, forKey: .intentId)
            
            
            
            
            try? container.encodeIfPresent(paymentMethodId, forKey: .paymentMethodId)
            
            
        }
        
    }
}




