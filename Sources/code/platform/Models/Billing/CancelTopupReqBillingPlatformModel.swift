

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: CancelTopupReq
        Used By: Billing
    */

    class CancelTopupReq: Codable {
        
        
        public var orderId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case orderId = "order_id"
            
        }

        public init(orderId: String? = nil) {
            
            self.orderId = orderId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    orderId = try container.decode(String.self, forKey: .orderId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(orderId, forKey: .orderId)
            
            
        }
        
    }
}




