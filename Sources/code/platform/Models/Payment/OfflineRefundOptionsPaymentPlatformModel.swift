

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: OfflineRefundOptions
        Used By: Payment
    */

    class OfflineRefundOptions: Codable {
        
        
        public var items: RefundOptionsDetails
        
        public var paymentModes: [String]
        
        public var offlineRefundCollectType: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case paymentModes = "payment_modes"
            
            case offlineRefundCollectType = "offline_refund_collect_type"
            
        }

        public init(items: RefundOptionsDetails, offlineRefundCollectType: [String]? = nil, paymentModes: [String]) {
            
            self.items = items
            
            self.paymentModes = paymentModes
            
            self.offlineRefundCollectType = offlineRefundCollectType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode(RefundOptionsDetails.self, forKey: .items)
                
            
            
            
                paymentModes = try container.decode([String].self, forKey: .paymentModes)
                
            
            
            
                do {
                    offlineRefundCollectType = try container.decode([String].self, forKey: .offlineRefundCollectType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(paymentModes, forKey: .paymentModes)
            
            
            
            
            try? container.encodeIfPresent(offlineRefundCollectType, forKey: .offlineRefundCollectType)
            
            
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
        
        public var offlineRefundCollectType: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case paymentModes = "payment_modes"
            
            case offlineRefundCollectType = "offline_refund_collect_type"
            
        }

        public init(items: RefundOptionsDetails, offlineRefundCollectType: [String]? = nil, paymentModes: [String]) {
            
            self.items = items
            
            self.paymentModes = paymentModes
            
            self.offlineRefundCollectType = offlineRefundCollectType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode(RefundOptionsDetails.self, forKey: .items)
                
            
            
            
                paymentModes = try container.decode([String].self, forKey: .paymentModes)
                
            
            
            
                do {
                    offlineRefundCollectType = try container.decode([String].self, forKey: .offlineRefundCollectType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(paymentModes, forKey: .paymentModes)
            
            
            
            
            try? container.encodeIfPresent(offlineRefundCollectType, forKey: .offlineRefundCollectType)
            
            
        }
        
    }
}


