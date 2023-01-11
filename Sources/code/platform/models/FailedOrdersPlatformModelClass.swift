

import Foundation
public extension PlatformClient {
    /*
         Model: FailedOrders
         Used By: Order
     */

    class FailedOrders: Codable {
        public var orders: FailOrder

        public enum CodingKeys: String, CodingKey {
            case orders
        }

        public init(orders: FailOrder) {
            self.orders = orders
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orders = try container.decode(FailOrder.self, forKey: .orders)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orders, forKey: .orders)
        }
    }
}
