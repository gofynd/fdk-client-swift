

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentBagReasons1
         Used By: Order
     */
    class ShipmentBagReasons1: Codable {
        public var reasons: [BagReasons1]

        public enum CodingKeys: String, CodingKey {
            case reasons
        }

        public init(reasons: [BagReasons1]) {
            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            reasons = try container.decode([BagReasons1].self, forKey: .reasons)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}
