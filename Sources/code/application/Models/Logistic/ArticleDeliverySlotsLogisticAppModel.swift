

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: ArticleDeliverySlots
        Used By: Logistic
    */
    class ArticleDeliverySlots: Codable {
        
        public var deliveryDate: String
        
        public var minSlot: String
        
        public var maxSlot: String
        

        public enum CodingKeys: String, CodingKey {
            
            case deliveryDate = "delivery_date"
            
            case minSlot = "min_slot"
            
            case maxSlot = "max_slot"
            
        }

        public init(deliveryDate: String, maxSlot: String, minSlot: String) {
            
            self.deliveryDate = deliveryDate
            
            self.minSlot = minSlot
            
            self.maxSlot = maxSlot
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            deliveryDate = try container.decode(String.self, forKey: .deliveryDate)
            
            
            
            
            minSlot = try container.decode(String.self, forKey: .minSlot)
            
            
            
            
            maxSlot = try container.decode(String.self, forKey: .maxSlot)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(deliveryDate, forKey: .deliveryDate)
            
            
            
            try? container.encodeIfPresent(minSlot, forKey: .minSlot)
            
            
            
            try? container.encodeIfPresent(maxSlot, forKey: .maxSlot)
            
            
        }
        
    }
}
