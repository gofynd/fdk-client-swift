

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: RefundOrderBenRequest
        Used By: Payment
    */
    class RefundOrderBenRequest: Codable {
        
        public var orderIds: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case orderIds = "order_ids"
            
        }

        public init(orderIds: [String]) {
            
            self.orderIds = orderIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            orderIds = try container.decode([String].self, forKey: .orderIds)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(orderIds, forKey: .orderIds)
            
            
        }
        
    }
}
