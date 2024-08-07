

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: PutIntentReq
        Used By: Billing
    */

    class PutIntentReq: Codable {
        
        
        public var uniqueExternalId: String?
        
        public var setupIntentId: String?
        
        public var paymentMethodId: String?
        
        public var setDefault: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case uniqueExternalId = "unique_external_id"
            
            case setupIntentId = "setup_intent_id"
            
            case paymentMethodId = "payment_method_id"
            
            case setDefault = "set_default"
            
        }

        public init(paymentMethodId: String? = nil, setupIntentId: String? = nil, setDefault: Bool? = nil, uniqueExternalId: String? = nil) {
            
            self.uniqueExternalId = uniqueExternalId
            
            self.setupIntentId = setupIntentId
            
            self.paymentMethodId = paymentMethodId
            
            self.setDefault = setDefault
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    uniqueExternalId = try container.decode(String.self, forKey: .uniqueExternalId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    setupIntentId = try container.decode(String.self, forKey: .setupIntentId)
                
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
                
            
            
                do {
                    setDefault = try container.decode(Bool.self, forKey: .setDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(uniqueExternalId, forKey: .uniqueExternalId)
            
            
            
            
            try? container.encodeIfPresent(setupIntentId, forKey: .setupIntentId)
            
            
            
            
            try? container.encodeIfPresent(paymentMethodId, forKey: .paymentMethodId)
            
            
            
            
            try? container.encodeIfPresent(setDefault, forKey: .setDefault)
            
            
        }
        
    }
}




