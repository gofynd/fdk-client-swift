

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PaymentStatusBulkHandlerCreation
        Used By: Payment
    */

    class PaymentStatusBulkHandlerCreation: Codable {
        
        
        public var merchantOrderId: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case merchantOrderId = "merchant_order_id"
            
        }

        public init(merchantOrderId: [String]) {
            
            self.merchantOrderId = merchantOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                merchantOrderId = try container.decode([String].self, forKey: .merchantOrderId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PaymentStatusBulkHandlerCreation
        Used By: Payment
    */

    class PaymentStatusBulkHandlerCreation: Codable {
        
        
        public var merchantOrderId: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case merchantOrderId = "merchant_order_id"
            
        }

        public init(merchantOrderId: [String]) {
            
            self.merchantOrderId = merchantOrderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                merchantOrderId = try container.decode([String].self, forKey: .merchantOrderId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)
            
            
        }
        
    }
}


