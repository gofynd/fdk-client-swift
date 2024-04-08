

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: RefundOptionsPriority
        Used By: Payment
    */
    class RefundOptionsPriority: Codable {
        
        public var paymentModes: [String]?
        
        public var items: [RefundItem]?
        
        public var paymentGateways: [String]?
        
        public var offlineRefundCollectType: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case paymentModes = "payment_modes"
            
            case items = "items"
            
            case paymentGateways = "payment_gateways"
            
            case offlineRefundCollectType = "offline_refund_collect_type"
            
        }

        public init(items: [RefundItem]? = nil, offlineRefundCollectType: [String]? = nil, paymentGateways: [String]? = nil, paymentModes: [String]? = nil) {
            
            self.paymentModes = paymentModes
            
            self.items = items
            
            self.paymentGateways = paymentGateways
            
            self.offlineRefundCollectType = offlineRefundCollectType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                paymentModes = try container.decode([String].self, forKey: .paymentModes)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                items = try container.decode([RefundItem].self, forKey: .items)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                paymentGateways = try container.decode([String].self, forKey: .paymentGateways)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
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
            
            
            try? container.encodeIfPresent(paymentModes, forKey: .paymentModes)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            try? container.encodeIfPresent(paymentGateways, forKey: .paymentGateways)
            
            
            
            try? container.encodeIfPresent(offlineRefundCollectType, forKey: .offlineRefundCollectType)
            
            
        }
        
    }
}
