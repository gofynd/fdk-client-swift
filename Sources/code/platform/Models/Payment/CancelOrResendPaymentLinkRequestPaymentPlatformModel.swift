

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: CancelOrResendPaymentLinkRequest
        Used By: Payment
    */

    class CancelOrResendPaymentLinkRequest: Codable {
        
        
        public var paymentLinkId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentLinkId = "payment_link_id"
            
        }

        public init(paymentLinkId: String) {
            
            self.paymentLinkId = paymentLinkId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: CancelOrResendPaymentLinkRequest
        Used By: Payment
    */

    class CancelOrResendPaymentLinkRequest: Codable {
        
        
        public var paymentLinkId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentLinkId = "payment_link_id"
            
        }

        public init(paymentLinkId: String) {
            
            self.paymentLinkId = paymentLinkId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                paymentLinkId = try container.decode(String.self, forKey: .paymentLinkId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(paymentLinkId, forKey: .paymentLinkId)
            
            
        }
        
    }
}


