import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderingStoreSelectRequest
         Used By: Configuration
     */
    class OrderingStoreSelectRequest: Codable {
        public var orderingStore: OrderingStoreSelect

        public enum CodingKeys: String, CodingKey {
            case orderingStore = "ordering_store"
        }

        public init(orderingStore: OrderingStoreSelect) {
            self.orderingStore = orderingStore
        }

        public func duplicate() -> OrderingStoreSelectRequest {
            let dict = self.dictionary!
            let copy = OrderingStoreSelectRequest(dictionary: dict)!
            return copy
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
