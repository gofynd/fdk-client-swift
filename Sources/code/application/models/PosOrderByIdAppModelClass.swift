

import Foundation
public extension ApplicationClient {
    /*
         Model: PosOrderById
         Used By: Order
     */
    class PosOrderById: Codable {
        public var order: OrderSchema

        public enum CodingKeys: String, CodingKey {
            case order
        }

        public init(order: OrderSchema) {
            self.order = order
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            order = try container.decode(OrderSchema.self, forKey: .order)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }
}
