

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ShipmentRefundSummaryResponse
        Used By: Order
    */
    class ShipmentRefundSummaryResponse: Codable {
        
        public var refundSummary: [ShipmentRefundSummary]?
        
        public var currency: OrderingCurrency?
        

        public enum CodingKeys: String, CodingKey {
            
            case refundSummary = "refund_summary"
            
            case currency = "currency"
            
        }

        public init(currency: OrderingCurrency? = nil, refundSummary: [ShipmentRefundSummary]? = nil) {
            
            self.refundSummary = refundSummary
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                refundSummary = try container.decode([ShipmentRefundSummary].self, forKey: .refundSummary)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                currency = try container.decode(OrderingCurrency.self, forKey: .currency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(refundSummary, forKey: .refundSummary)
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}
