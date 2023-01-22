

import Foundation
public extension ApplicationClient {
    /*
        Model: OrderDiscountRequest
        Used By: Rewards
    */
    class OrderDiscountRequest: Codable {
        
        public var orderAmount: Double
        
        public var currency: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderAmount = "order_amount"
            
            case currency = "currency"
            
        }

        public init(currency: String? = nil, orderAmount: Double) {
            
            self.orderAmount = orderAmount
            
            self.currency = currency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            orderAmount = try container.decode(Double.self, forKey: .orderAmount)
            
            
            
            
            do {
                currency = try container.decode(String.self, forKey: .currency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderAmount, forKey: .orderAmount)
            
            
            
            
            try? container.encodeIfPresent(currency, forKey: .currency)
            
            
        }
        
    }
}
