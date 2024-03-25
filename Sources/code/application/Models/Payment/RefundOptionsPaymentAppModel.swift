

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: RefundOptions
        Used By: Payment
    */
    class RefundOptions: Codable {
        
        public var items: RefundOptionsDetails
        
        public var offlineRefundCollectType: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case offlineRefundCollectType = "offline_refund_collect_type"
            
        }

        public init(items: RefundOptionsDetails, offlineRefundCollectType: [String]? = nil) {
            
            self.items = items
            
            self.offlineRefundCollectType = offlineRefundCollectType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            items = try container.decode(RefundOptionsDetails.self, forKey: .items)
            
            
            
            
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
            
            
            
            try? container.encodeIfPresent(offlineRefundCollectType, forKey: .offlineRefundCollectType)
            
            
        }
        
    }
}
