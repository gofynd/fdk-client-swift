

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OfflineRefundOptions
        Used By: Payment
    */

    class OfflineRefundOptions: Codable {
        
        
        public var items: RefundOptionsDetails
        
        public var paymentModes: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case paymentModes = "payment_modes"
            
        }

        public init(items: RefundOptionsDetails, paymentModes: [String]) {
            
            self.items = items
            
            self.paymentModes = paymentModes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode(RefundOptionsDetails.self, forKey: .items)
                
            
            
            
                paymentModes = try container.decode([String].self, forKey: .paymentModes)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(paymentModes, forKey: .paymentModes)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: OfflineRefundOptions
        Used By: Payment
    */

    class OfflineRefundOptions: Codable {
        
        
        public var items: RefundOptionsDetails
        
        public var paymentModes: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case paymentModes = "payment_modes"
            
        }

        public init(items: RefundOptionsDetails, paymentModes: [String]) {
            
            self.items = items
            
            self.paymentModes = paymentModes
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode(RefundOptionsDetails.self, forKey: .items)
                
            
            
            
                paymentModes = try container.decode([String].self, forKey: .paymentModes)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(paymentModes, forKey: .paymentModes)
            
            
        }
        
    }
}


