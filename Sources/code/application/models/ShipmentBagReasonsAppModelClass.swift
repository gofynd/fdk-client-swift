

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentBagReasons
         Used By: Order
     */
    class ShipmentBagReasons: Codable {
        public var reasons: [BagReasons]

        public enum CodingKeys: String, CodingKey {
            case reasons
        }

        public init(reasons: [BagReasons]) {
            self.reasons = reasons
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            reasons = try container.decode([BagReasons].self, forKey: .reasons)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }
}
