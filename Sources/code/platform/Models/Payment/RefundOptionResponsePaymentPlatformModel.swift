

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: RefundOptionResponse
        Used By: Payment
    */

    class RefundOptionResponse: Codable {
        
        
        public var offlineRefundOptions: OfflineRefundOptions
        
        public var success: Bool
        
        public var refundOptions: RefundOptions
        

        public enum CodingKeys: String, CodingKey {
            
            case offlineRefundOptions = "offline_refund_options"
            
            case success = "success"
            
            case refundOptions = "refund_options"
            
        }

        public init(offlineRefundOptions: OfflineRefundOptions, refundOptions: RefundOptions, success: Bool) {
            
            self.offlineRefundOptions = offlineRefundOptions
            
            self.success = success
            
            self.refundOptions = refundOptions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                offlineRefundOptions = try container.decode(OfflineRefundOptions.self, forKey: .offlineRefundOptions)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                refundOptions = try container.decode(RefundOptions.self, forKey: .refundOptions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(offlineRefundOptions, forKey: .offlineRefundOptions)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(refundOptions, forKey: .refundOptions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: RefundOptionResponse
        Used By: Payment
    */

    class RefundOptionResponse: Codable {
        
        
        public var offlineRefundOptions: OfflineRefundOptions
        
        public var success: Bool
        
        public var refundOptions: RefundOptions
        

        public enum CodingKeys: String, CodingKey {
            
            case offlineRefundOptions = "offline_refund_options"
            
            case success = "success"
            
            case refundOptions = "refund_options"
            
        }

        public init(offlineRefundOptions: OfflineRefundOptions, refundOptions: RefundOptions, success: Bool) {
            
            self.offlineRefundOptions = offlineRefundOptions
            
            self.success = success
            
            self.refundOptions = refundOptions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                offlineRefundOptions = try container.decode(OfflineRefundOptions.self, forKey: .offlineRefundOptions)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
                refundOptions = try container.decode(RefundOptions.self, forKey: .refundOptions)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(offlineRefundOptions, forKey: .offlineRefundOptions)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(refundOptions, forKey: .refundOptions)
            
            
        }
        
    }
}


