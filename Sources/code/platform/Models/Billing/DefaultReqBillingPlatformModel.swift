

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: DefaultReq
        Used By: Billing
    */

    class DefaultReq: Codable {
        
        
        public var paymentMethodId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentMethodId = "payment_method_id"
            
        }

        public init(paymentMethodId: String? = nil) {
            
            self.paymentMethodId = paymentMethodId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            try? container.encodeIfPresent(paymentMethodId, forKey: .paymentMethodId)
            
            
        }
        
    }
}




