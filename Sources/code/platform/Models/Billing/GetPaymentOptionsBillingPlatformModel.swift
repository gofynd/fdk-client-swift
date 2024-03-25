

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: GetPaymentOptions
        Used By: Billing
    */

    class GetPaymentOptions: Codable {
        
        
        public var paymentOptions: [PaymentItems]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentOptions = "payment_options"
            
        }

        public init(paymentOptions: [PaymentItems]? = nil) {
            
            self.paymentOptions = paymentOptions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    paymentOptions = try container.decode([PaymentItems].self, forKey: .paymentOptions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentOptions, forKey: .paymentOptions)
            
            
        }
        
    }
}




