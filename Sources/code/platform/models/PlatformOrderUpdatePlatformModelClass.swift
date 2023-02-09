

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformOrderUpdate
         Used By: Order
     */

    class PlatformOrderUpdate: Codable {
        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"
        }

        public init(orderId: String) {
            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
