

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: ShipmentRefundSummaryMeta
        Used By: Order
    */
    class ShipmentRefundSummaryMeta: Codable {
        
        public var utr: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case utr = "utr"
            
        }

        public init(utr: String? = nil) {
            
            self.utr = utr
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                utr = try container.decode(String.self, forKey: .utr)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(utr, forKey: .utr)
            
            
        }
        
    }
}
