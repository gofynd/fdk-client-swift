

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: OrderingStoreSelectRequestSchema
        Used By: Configuration
    */
    class OrderingStoreSelectRequestSchema: Codable {
        
        public var orderingStore: OrderingStoreSelect
        

        public enum CodingKeys: String, CodingKey {
            
            case orderingStore = "ordering_store"
            
        }

        public init(orderingStore: OrderingStoreSelect) {
            
            self.orderingStore = orderingStore
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            orderingStore = try container.decode(OrderingStoreSelect.self, forKey: .orderingStore)
            
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
            
            
        }
        
    }
}
