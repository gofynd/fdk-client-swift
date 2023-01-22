

import Foundation
public extension PlatformClient {
    /*
        Model: Dates
        Used By: Order
    */

    class Dates: Codable {
        
        
        public var orderCreated: String?
        
        public var deliveryDate: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderCreated = "order_created"
            
            case deliveryDate = "delivery_date"
            
        }

        public init(deliveryDate: [String: Any]? = nil, orderCreated: String? = nil) {
            
            self.orderCreated = orderCreated
            
            self.deliveryDate = deliveryDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderCreated = try container.decode(String.self, forKey: .orderCreated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deliveryDate = try container.decode([String: Any].self, forKey: .deliveryDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderCreated, forKey: .orderCreated)
            
            
            
            
            try? container.encode(deliveryDate, forKey: .deliveryDate)
            
            
        }
        
    }
}
