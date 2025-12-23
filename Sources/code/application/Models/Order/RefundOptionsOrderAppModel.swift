

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: RefundOptions
        Used By: Order
    */
    class RefundOptions: Codable {
        
        public var refundOptions: [RefundOption]
        
        public var refundPriceBreakup: [PriceBreakupValues]?
        
        public var isRefundConfigEnabled: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundOptions = "refund_options"
            
            case refundPriceBreakup = "refund_price_breakup"
            
            case isRefundConfigEnabled = "is_refund_config_enabled"
            
        }

        public init(isRefundConfigEnabled: Bool? = nil, refundOptions: [RefundOption], refundPriceBreakup: [PriceBreakupValues]? = nil) {
            
            self.refundOptions = refundOptions
            
            self.refundPriceBreakup = refundPriceBreakup
            
            self.isRefundConfigEnabled = isRefundConfigEnabled
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            refundOptions = try container.decode([RefundOption].self, forKey: .refundOptions)
            
            
            
            
            do {
                refundPriceBreakup = try container.decode([PriceBreakupValues].self, forKey: .refundPriceBreakup)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                isRefundConfigEnabled = try container.decode(Bool.self, forKey: .isRefundConfigEnabled)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(refundOptions, forKey: .refundOptions)
            
            
            
            try? container.encodeIfPresent(refundPriceBreakup, forKey: .refundPriceBreakup)
            
            
            
            try? container.encodeIfPresent(isRefundConfigEnabled, forKey: .isRefundConfigEnabled)
            
            
        }
        
    }
}
